import 'dart:async';


<<<<<<< HEAD
import 'package:beep_lawyer_3/domain/Interface/api_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
=======
import 'package:beep_lawyer2/domain/Interface/api_interface.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
<<<<<<< HEAD
import 'package:beep_lawyer_3/core/error/failure.dart';
=======
import 'package:beep_lawyer2/core/error/failure.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';


@injectable
class SigninBloc extends Bloc<SignInEvent, SignInState> {
  final ApiInterface apiInterface;
 final LocalStorageInterface localStorageInterface;

  SigninBloc({@required this.localStorageInterface, @required this.apiInterface}) : super(SignInStateInitial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield SignInStateAuthenticating();
    yield* event.map(onSubmit: (e) async* {
      final response = await apiInterface.signIn(e.phoneNumber, e.password);
      yield* response.fold((l) async* {
        yield SignInStateError(l);
      }, (r) async* {
        localStorageInterface.cacheUserFromSignIn(r, e.phoneNumber);
        yield SignInStateAuthenticated();
      });
    }, register: (e) async* {
      yield SignInStateInitial();
    });
  }
}
