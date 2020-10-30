part of 'signin_bloc.dart';

@immutable
@freezed
abstract class SignInState with _$SignInState{
  const factory SignInState.initial() = SignInStateInitial;
  const factory SignInState.authenticating() = SignInStateAuthenticating;
  const factory SignInState.authenticated() = SignInStateAuthenticated;
  const factory SignInState.error(Failure failure) = SignInStateError;
}
