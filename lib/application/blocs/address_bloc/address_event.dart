part of 'address_bloc.dart';

@immutable
@freezed
abstract class AddressEvent with _$AddressEvent{
  const factory AddressEvent.getAddress() = GetAddress;
  const factory AddressEvent.getBuddyAddress() = GetBuddyAddress;
}