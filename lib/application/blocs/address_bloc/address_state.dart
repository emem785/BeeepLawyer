part of 'address_bloc.dart';

@immutable
@freezed
abstract class AddressState with _$AddressState{
  const factory AddressState.addressInitial() = AddressInitial;
  const factory AddressState.addressLoading() = AddressLoading;
  const factory AddressState.addressGotten(String address) = AddressGotten;
  const factory AddressState.addressFailure() = AddressFailure;
}