part of 'user_bloc.dart';

@immutable
@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.userLoaded(User user) = UserLoaded;
  const factory UserState.userError(Failure failure) = UserError;
  const factory UserState.userUpdated(String msg) = UserUpdated;
  const factory UserState.userUpdating() = UserUpdating;
}
