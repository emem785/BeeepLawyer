import 'dart:async';
import 'dart:convert';

import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer2/domain/Interface/payment_interface.dart';
import 'package:beep_lawyer2/infrastructure/models/user.dart';
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
  PaymentBloc(
      {@required this.localStorageInterface, @required this.paymentInterface})
      : super(PaymentInitial());

  @override
  Stream<PaymentState> mapEventToState(
    PaymentEvent event,
  ) async* {
    yield PaymentLoading();
    if (event is MakePayment) {
      paymentInterface.initializePlugin();
      final email = await _getEmail();
      final charge =
          paymentInterface.createCharge(event.chargeAmount,email);
      final paymentResponse =
          await paymentInterface.checkOut(charge, event.context);
      yield* paymentResponse.fold((l) async* {
        yield PaymentFailed(l);
      }, (r) async* {
        yield PaymentSucceeded();
      });
    }
  }

  Future<String> _getEmail() async {
    final response = await localStorageInterface.getUser();
    final user =
        response.fold((l) => null, (r) => User.fromJson(jsonDecode(r)));
    final email = user.email;
    return email;
  }
}
