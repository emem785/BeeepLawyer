import 'dart:async';


import 'package:beep_lawyer2/application/blocs/auth_bloc/auth_bloc.dart';
import 'package:beep_lawyer2/domain/Interface/api_interface.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:beep_lawyer2/core/error/failure.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

const USER_KEY = 'user';
const TOKEN_KEY = 'token';

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
