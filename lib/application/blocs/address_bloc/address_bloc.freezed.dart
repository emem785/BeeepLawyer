// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddressEventTearOff {
  const _$AddressEventTearOff();

// ignore: unused_element
  GetAddress getAddress() {
    return const GetAddress();
  }

// ignore: unused_element
  GetBuddyAddress getBuddyAddress() {
    return const GetBuddyAddress();
  }
}

// ignore: unused_element
const $AddressEvent = _$AddressEventTearOff();

mixin _$AddressEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAddress(),
    @required Result getBuddyAddress(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAddress(),
    Result getBuddyAddress(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAddress(GetAddress value),
    @required Result getBuddyAddress(GetBuddyAddress value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAddress(GetAddress value),
    Result getBuddyAddress(GetBuddyAddress value),
    @required Result orElse(),
  });
}

abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res>;
}

class _$AddressEventCopyWithImpl<$Res> implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

  final AddressEvent _value;
  // ignore: unused_field
  final $Res Function(AddressEvent) _then;
}

abstract class $GetAddressCopyWith<$Res> {
  factory $GetAddressCopyWith(
          GetAddress value, $Res Function(GetAddress) then) =
      _$GetAddressCopyWithImpl<$Res>;
}

class _$GetAddressCopyWithImpl<$Res> extends _$AddressEventCopyWithImpl<$Res>
    implements $GetAddressCopyWith<$Res> {
  _$GetAddressCopyWithImpl(GetAddress _value, $Res Function(GetAddress) _then)
      : super(_value, (v) => _then(v as GetAddress));

  @override
  GetAddress get _value => super._value as GetAddress;
}

class _$GetAddress implements GetAddress {
  const _$GetAddress();

  @override
  String toString() {
    return 'AddressEvent.getAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAddress(),
    @required Result getBuddyAddress(),
  }) {
    assert(getAddress != null);
    assert(getBuddyAddress != null);
    return getAddress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAddress(),
    Result getBuddyAddress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAddress != null) {
      return getAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAddress(GetAddress value),
    @required Result getBuddyAddress(GetBuddyAddress value),
  }) {
    assert(getAddress != null);
    assert(getBuddyAddress != null);
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAddress(GetAddress value),
    Result getBuddyAddress(GetBuddyAddress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class GetAddress implements AddressEvent {
  const factory GetAddress() = _$GetAddress;
}

abstract class $GetBuddyAddressCopyWith<$Res> {
  factory $GetBuddyAddressCopyWith(
          GetBuddyAddress value, $Res Function(GetBuddyAddress) then) =
      _$GetBuddyAddressCopyWithImpl<$Res>;
}

class _$GetBuddyAddressCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res>
    implements $GetBuddyAddressCopyWith<$Res> {
  _$GetBuddyAddressCopyWithImpl(
      GetBuddyAddress _value, $Res Function(GetBuddyAddress) _then)
      : super(_value, (v) => _then(v as GetBuddyAddress));

  @override
  GetBuddyAddress get _value => super._value as GetBuddyAddress;
}

class _$GetBuddyAddress implements GetBuddyAddress {
  const _$GetBuddyAddress();

  @override
  String toString() {
    return 'AddressEvent.getBuddyAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetBuddyAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAddress(),
    @required Result getBuddyAddress(),
  }) {
    assert(getAddress != null);
    assert(getBuddyAddress != null);
    return getBuddyAddress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAddress(),
    Result getBuddyAddress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBuddyAddress != null) {
      return getBuddyAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAddress(GetAddress value),
    @required Result getBuddyAddress(GetBuddyAddress value),
  }) {
    assert(getAddress != null);
    assert(getBuddyAddress != null);
    return getBuddyAddress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAddress(GetAddress value),
    Result getBuddyAddress(GetBuddyAddress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getBuddyAddress != null) {
      return getBuddyAddress(this);
    }
    return orElse();
  }
}

abstract class GetBuddyAddress implements AddressEvent {
  const factory GetBuddyAddress() = _$GetBuddyAddress;
}

class _$AddressStateTearOff {
  const _$AddressStateTearOff();

// ignore: unused_element
  AddressInitial addressInitial() {
    return const AddressInitial();
  }

// ignore: unused_element
  AddressLoading addressLoading() {
    return const AddressLoading();
  }

// ignore: unused_element
  AddressGotten addressGotten(String address) {
    return AddressGotten(
      address,
    );
  }

// ignore: unused_element
  AddressFailure addressFailure() {
    return const AddressFailure();
  }
}

// ignore: unused_element
const $AddressState = _$AddressStateTearOff();

mixin _$AddressState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addressInitial(),
    @required Result addressLoading(),
    @required Result addressGotten(String address),
    @required Result addressFailure(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addressInitial(),
    Result addressLoading(),
    Result addressGotten(String address),
    Result addressFailure(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addressInitial(AddressInitial value),
    @required Result addressLoading(AddressLoading value),
    @required Result addressGotten(AddressGotten value),
    @required Result addressFailure(AddressFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addressInitial(AddressInitial value),
    Result addressLoading(AddressLoading value),
    Result addressGotten(AddressGotten value),
    Result addressFailure(AddressFailure value),
    @required Result orElse(),
  });
}

abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res>;
}

class _$AddressStateCopyWithImpl<$Res> implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  final AddressState _value;
  // ignore: unused_field
  final $Res Function(AddressState) _then;
}

abstract class $AddressInitialCopyWith<$Res> {
  factory $AddressInitialCopyWith(
          AddressInitial value, $Res Function(AddressInitial) then) =
      _$AddressInitialCopyWithImpl<$Res>;
}

class _$AddressInitialCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res>
    implements $AddressInitialCopyWith<$Res> {
  _$AddressInitialCopyWithImpl(
      AddressInitial _value, $Res Function(AddressInitial) _then)
      : super(_value, (v) => _then(v as AddressInitial));

  @override
  AddressInitial get _value => super._value as AddressInitial;
}

class _$AddressInitial implements AddressInitial {
  const _$AddressInitial();

  @override
  String toString() {
    return 'AddressState.addressInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddressInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addressInitial(),
    @required Result addressLoading(),
    @required Result addressGotten(String address),
    @required Result addressFailure(),
  }) {
    assert(addressInitial != null);
    assert(addressLoading != null);
    assert(addressGotten != null);
    assert(addressFailure != null);
    return addressInitial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addressInitial(),
    Result addressLoading(),
    Result addressGotten(String address),
    Result addressFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressInitial != null) {
      return addressInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addressInitial(AddressInitial value),
    @required Result addressLoading(AddressLoading value),
    @required Result addressGotten(AddressGotten value),
    @required Result addressFailure(AddressFailure value),
  }) {
    assert(addressInitial != null);
    assert(addressLoading != null);
    assert(addressGotten != null);
    assert(addressFailure != null);
    return addressInitial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addressInitial(AddressInitial value),
    Result addressLoading(AddressLoading value),
    Result addressGotten(AddressGotten value),
    Result addressFailure(AddressFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressInitial != null) {
      return addressInitial(this);
    }
    return orElse();
  }
}

abstract class AddressInitial implements AddressState {
  const factory AddressInitial() = _$AddressInitial;
}

abstract class $AddressLoadingCopyWith<$Res> {
  factory $AddressLoadingCopyWith(
          AddressLoading value, $Res Function(AddressLoading) then) =
      _$AddressLoadingCopyWithImpl<$Res>;
}

class _$AddressLoadingCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res>
    implements $AddressLoadingCopyWith<$Res> {
  _$AddressLoadingCopyWithImpl(
      AddressLoading _value, $Res Function(AddressLoading) _then)
      : super(_value, (v) => _then(v as AddressLoading));

  @override
  AddressLoading get _value => super._value as AddressLoading;
}

class _$AddressLoading implements AddressLoading {
  const _$AddressLoading();

  @override
  String toString() {
    return 'AddressState.addressLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddressLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addressInitial(),
    @required Result addressLoading(),
    @required Result addressGotten(String address),
    @required Result addressFailure(),
  }) {
    assert(addressInitial != null);
    assert(addressLoading != null);
    assert(addressGotten != null);
    assert(addressFailure != null);
    return addressLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addressInitial(),
    Result addressLoading(),
    Result addressGotten(String address),
    Result addressFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressLoading != null) {
      return addressLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addressInitial(AddressInitial value),
    @required Result addressLoading(AddressLoading value),
    @required Result addressGotten(AddressGotten value),
    @required Result addressFailure(AddressFailure value),
  }) {
    assert(addressInitial != null);
    assert(addressLoading != null);
    assert(addressGotten != null);
    assert(addressFailure != null);
    return addressLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addressInitial(AddressInitial value),
    Result addressLoading(AddressLoading value),
    Result addressGotten(AddressGotten value),
    Result addressFailure(AddressFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressLoading != null) {
      return addressLoading(this);
    }
    return orElse();
  }
}

abstract class AddressLoading implements AddressState {
  const factory AddressLoading() = _$AddressLoading;
}

abstract class $AddressGottenCopyWith<$Res> {
  factory $AddressGottenCopyWith(
          AddressGotten value, $Res Function(AddressGotten) then) =
      _$AddressGottenCopyWithImpl<$Res>;
  $Res call({String address});
}

class _$AddressGottenCopyWithImpl<$Res> extends _$AddressStateCopyWithImpl<$Res>
    implements $AddressGottenCopyWith<$Res> {
  _$AddressGottenCopyWithImpl(
      AddressGotten _value, $Res Function(AddressGotten) _then)
      : super(_value, (v) => _then(v as AddressGotten));

  @override
  AddressGotten get _value => super._value as AddressGotten;

  @override
  $Res call({
    Object address = freezed,
  }) {
    return _then(AddressGotten(
      address == freezed ? _value.address : address as String,
    ));
  }
}

class _$AddressGotten implements AddressGotten {
  const _$AddressGotten(this.address) : assert(address != null);

  @override
  final String address;

  @override
  String toString() {
    return 'AddressState.addressGotten(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressGotten &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @override
  $AddressGottenCopyWith<AddressGotten> get copyWith =>
      _$AddressGottenCopyWithImpl<AddressGotten>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addressInitial(),
    @required Result addressLoading(),
    @required Result addressGotten(String address),
    @required Result addressFailure(),
  }) {
    assert(addressInitial != null);
    assert(addressLoading != null);
    assert(addressGotten != null);
    assert(addressFailure != null);
    return addressGotten(address);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addressInitial(),
    Result addressLoading(),
    Result addressGotten(String address),
    Result addressFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressGotten != null) {
      return addressGotten(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addressInitial(AddressInitial value),
    @required Result addressLoading(AddressLoading value),
    @required Result addressGotten(AddressGotten value),
    @required Result addressFailure(AddressFailure value),
  }) {
    assert(addressInitial != null);
    assert(addressLoading != null);
    assert(addressGotten != null);
    assert(addressFailure != null);
    return addressGotten(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addressInitial(AddressInitial value),
    Result addressLoading(AddressLoading value),
    Result addressGotten(AddressGotten value),
    Result addressFailure(AddressFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressGotten != null) {
      return addressGotten(this);
    }
    return orElse();
  }
}

abstract class AddressGotten implements AddressState {
  const factory AddressGotten(String address) = _$AddressGotten;

  String get address;
  $AddressGottenCopyWith<AddressGotten> get copyWith;
}

abstract class $AddressFailureCopyWith<$Res> {
  factory $AddressFailureCopyWith(
          AddressFailure value, $Res Function(AddressFailure) then) =
      _$AddressFailureCopyWithImpl<$Res>;
}

class _$AddressFailureCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res>
    implements $AddressFailureCopyWith<$Res> {
  _$AddressFailureCopyWithImpl(
      AddressFailure _value, $Res Function(AddressFailure) _then)
      : super(_value, (v) => _then(v as AddressFailure));

  @override
  AddressFailure get _value => super._value as AddressFailure;
}

class _$AddressFailure implements AddressFailure {
  const _$AddressFailure();

  @override
  String toString() {
    return 'AddressState.addressFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddressFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addressInitial(),
    @required Result addressLoading(),
    @required Result addressGotten(String address),
    @required Result addressFailure(),
  }) {
    assert(addressInitial != null);
    assert(addressLoading != null);
    assert(addressGotten != null);
    assert(addressFailure != null);
    return addressFailure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addressInitial(),
    Result addressLoading(),
    Result addressGotten(String address),
    Result addressFailure(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressFailure != null) {
      return addressFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addressInitial(AddressInitial value),
    @required Result addressLoading(AddressLoading value),
    @required Result addressGotten(AddressGotten value),
    @required Result addressFailure(AddressFailure value),
  }) {
    assert(addressInitial != null);
    assert(addressLoading != null);
    assert(addressGotten != null);
    assert(addressFailure != null);
    return addressFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addressInitial(AddressInitial value),
    Result addressLoading(AddressLoading value),
    Result addressGotten(AddressGotten value),
    Result addressFailure(AddressFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addressFailure != null) {
      return addressFailure(this);
    }
    return orElse();
  }
}

abstract class AddressFailure implements AddressState {
  const factory AddressFailure() = _$AddressFailure;
}
