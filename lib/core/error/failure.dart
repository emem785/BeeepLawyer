import 'package:freezed_annotation/freezed_annotation.dart';
part 'failure.freezed.dart';

@immutable
@freezed
abstract class Failure with _$Failure {
  const factory Failure.userExist(String message) = UserExist;
  const factory Failure.noCredentials(String message) = NoCredentials;
  const factory Failure.notAuthorized(String message) = NotAuthorized;
  const factory Failure.serverFailure(String message) = ServerFailure;
  const factory Failure.cacheFailure(String message) = CacheFailure;
}


