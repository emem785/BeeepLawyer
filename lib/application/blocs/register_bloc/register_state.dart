part of 'register_bloc.dart';

@immutable
@freezed
abstract class RegisterState with _$RegisterState{
  const factory RegisterState.initial() = RegisterUserInitial;
  const factory RegisterState.registerComplete(String phoneNumber) = RegisterComplete;
  const factory RegisterState.getCodeComplete(String code) = GetCodeComplete;
  const factory RegisterState.verifyComplete(User user) = VerifyComplete;
  const factory RegisterState.loading() = RegisterLoading;
  const factory RegisterState.error(Failure failure) = RegisterError;
}
