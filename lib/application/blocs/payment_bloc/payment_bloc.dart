import 'dart:async';
import 'dart:convert';

import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/payment_interface.dart';
import 'package:beep_lawyer_3/infrastructure/models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_event.dart';
part 'payment_state.dart';
part 'payment_bloc.freezed.dart';

@injectable
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentInterface paymentInterface;
  final LocalStorageInterface localStorageInterface;
  int price = 150000;
  PaymentBloc(
      {@required this.localStorageInterface, @required this.paymentInterface})
      : super(PaymentInitial());

  @override
  Stream<PaymentState> mapEventToState(
    PaymentEvent event,
  ) async* {
    yield PaymentLoading();
    yield* event.map(initializePayment: (e) async* {
      paymentInterface.initializePlugin();
      yield PaymentInitialized();
    }, makePayment: (e) async* {
      print("bloc active");
      final email = await _getEmail();
      final charge = paymentInterface.createCharge(price, email);
      final paymentResponse =
          await paymentInterface.checkOut(charge, e.context);
      yield* paymentResponse.fold((l) async* {
        yield PaymentFailed(l);
      }, (r) async* {
        yield PaymentSucceeded();
      });
    },setPrice: (e) async* {
      price = e.price;
    });
  }

  Future<String> _getEmail() async {
    final response = await localStorageInterface.getUser();
    final user =
        response.fold((l) => null, (r) => User.fromJson(jsonDecode(r)));
    final email = user.email;
    return email;
  }
}
