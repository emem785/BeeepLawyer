part of 'signin_bloc.dart';

@immutable
@freezed
abstract class SignInEvent with _$SignInEvent{
  const factory SignInEvent.onSubmit(String phoneNumber,String password) = SignInEventOnSubmit;
  const factory SignInEvent.register() = SignInEventRegister;
}