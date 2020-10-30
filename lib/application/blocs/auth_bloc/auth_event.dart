part of 'auth_bloc.dart';

@immutable
@freezed
abstract class AuthEvent with _$AuthEvent{
  const factory AuthEvent.appLoaded() = AppLoaded;
  const factory AuthEvent.signOut() = SignOut;
}