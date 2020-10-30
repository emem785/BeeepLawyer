part of 'unilink_cubit.dart';

@immutable
@freezed
abstract class UnilinkState with _$UnilinkState{
  const factory UnilinkState.initial() = UnilinkInitial;
  const factory UnilinkState.disposed() = UnilinkDisposed;

}