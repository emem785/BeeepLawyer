part of 'user_bloc.dart';

@immutable
@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.insertUser() = InsertUser;
  const factory UserEvent.updateUser(User user) = UpdateUser;
  const factory UserEvent.updatePassword(String password) = UpdatePassword;
  const factory UserEvent.cacheScnNumber(String scnNumber) = CacheScnNumber;
}
