// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PaymentEventTearOff {
  const _$PaymentEventTearOff();

// ignore: unused_element
  InitializePayment initializePayment() {
    return const InitializePayment();
  }

// ignore: unused_element
  MakePayment makePayment(BuildContext context) {
    return MakePayment(
      context,
    );
  }

// ignore: unused_element
  SetPrice setPrice(int price) {
    return SetPrice(
      price,
    );
  }
}

// ignore: unused_element
const $PaymentEvent = _$PaymentEventTearOff();

mixin _$PaymentEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializePayment(),
    @required Result makePayment(BuildContext context),
    @required Result setPrice(int price),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializePayment(),
    Result makePayment(BuildContext context),
    Result setPrice(int price),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializePayment(InitializePayment value),
    @required Result makePayment(MakePayment value),
    @required Result setPrice(SetPrice value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializePayment(InitializePayment value),
    Result makePayment(MakePayment value),
    Result setPrice(SetPrice value),
    @required Result orElse(),
  });
}

abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
}

class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;
}

abstract class $InitializePaymentCopyWith<$Res> {
  factory $InitializePaymentCopyWith(
          InitializePayment value, $Res Function(InitializePayment) then) =
      _$InitializePaymentCopyWithImpl<$Res>;
}

class _$InitializePaymentCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $InitializePaymentCopyWith<$Res> {
  _$InitializePaymentCopyWithImpl(
      InitializePayment _value, $Res Function(InitializePayment) _then)
      : super(_value, (v) => _then(v as InitializePayment));

  @override
  InitializePayment get _value => super._value as InitializePayment;
}

class _$InitializePayment implements InitializePayment {
  const _$InitializePayment();

  @override
  String toString() {
    return 'PaymentEvent.initializePayment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitializePayment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializePayment(),
    @required Result makePayment(BuildContext context),
    @required Result setPrice(int price),
  }) {
    assert(initializePayment != null);
    assert(makePayment != null);
    assert(setPrice != null);
    return initializePayment();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializePayment(),
    Result makePayment(BuildContext context),
    Result setPrice(int price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializePayment != null) {
      return initializePayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializePayment(InitializePayment value),
    @required Result makePayment(MakePayment value),
    @required Result setPrice(SetPrice value),
  }) {
    assert(initializePayment != null);
    assert(makePayment != null);
    assert(setPrice != null);
    return initializePayment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializePayment(InitializePayment value),
    Result makePayment(MakePayment value),
    Result setPrice(SetPrice value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializePayment != null) {
      return initializePayment(this);
    }
    return orElse();
  }
}

abstract class InitializePayment implements PaymentEvent {
  const factory InitializePayment() = _$InitializePayment;
}

abstract class $MakePaymentCopyWith<$Res> {
  factory $MakePaymentCopyWith(
          MakePayment value, $Res Function(MakePayment) then) =
      _$MakePaymentCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

class _$MakePaymentCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $MakePaymentCopyWith<$Res> {
  _$MakePaymentCopyWithImpl(
      MakePayment _value, $Res Function(MakePayment) _then)
      : super(_value, (v) => _then(v as MakePayment));

  @override
  MakePayment get _value => super._value as MakePayment;

  @override
  $Res call({
    Object context = freezed,
  }) {
    return _then(MakePayment(
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$MakePayment implements MakePayment {
  const _$MakePayment(this.context) : assert(context != null);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'PaymentEvent.makePayment(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MakePayment &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(context);

  @override
  $MakePaymentCopyWith<MakePayment> get copyWith =>
      _$MakePaymentCopyWithImpl<MakePayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializePayment(),
    @required Result makePayment(BuildContext context),
    @required Result setPrice(int price),
  }) {
    assert(initializePayment != null);
    assert(makePayment != null);
    assert(setPrice != null);
    return makePayment(context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializePayment(),
    Result makePayment(BuildContext context),
    Result setPrice(int price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (makePayment != null) {
      return makePayment(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializePayment(InitializePayment value),
    @required Result makePayment(MakePayment value),
    @required Result setPrice(SetPrice value),
  }) {
    assert(initializePayment != null);
    assert(makePayment != null);
    assert(setPrice != null);
    return makePayment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializePayment(InitializePayment value),
    Result makePayment(MakePayment value),
    Result setPrice(SetPrice value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (makePayment != null) {
      return makePayment(this);
    }
    return orElse();
  }
}

abstract class MakePayment implements PaymentEvent {
  const factory MakePayment(BuildContext context) = _$MakePayment;

  BuildContext get context;
  $MakePaymentCopyWith<MakePayment> get copyWith;
}

abstract class $SetPriceCopyWith<$Res> {
  factory $SetPriceCopyWith(SetPrice value, $Res Function(SetPrice) then) =
      _$SetPriceCopyWithImpl<$Res>;
  $Res call({int price});
}

class _$SetPriceCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $SetPriceCopyWith<$Res> {
  _$SetPriceCopyWithImpl(SetPrice _value, $Res Function(SetPrice) _then)
      : super(_value, (v) => _then(v as SetPrice));

  @override
  SetPrice get _value => super._value as SetPrice;

  @override
  $Res call({
    Object price = freezed,
  }) {
    return _then(SetPrice(
      price == freezed ? _value.price : price as int,
    ));
  }
}

class _$SetPrice implements SetPrice {
  const _$SetPrice(this.price) : assert(price != null);

  @override
  final int price;

  @override
  String toString() {
    return 'PaymentEvent.setPrice(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetPrice &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @override
  $SetPriceCopyWith<SetPrice> get copyWith =>
      _$SetPriceCopyWithImpl<SetPrice>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializePayment(),
    @required Result makePayment(BuildContext context),
    @required Result setPrice(int price),
  }) {
    assert(initializePayment != null);
    assert(makePayment != null);
    assert(setPrice != null);
    return setPrice(price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializePayment(),
    Result makePayment(BuildContext context),
    Result setPrice(int price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setPrice != null) {
      return setPrice(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializePayment(InitializePayment value),
    @required Result makePayment(MakePayment value),
    @required Result setPrice(SetPrice value),
  }) {
    assert(initializePayment != null);
    assert(makePayment != null);
    assert(setPrice != null);
    return setPrice(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializePayment(InitializePayment value),
    Result makePayment(MakePayment value),
    Result setPrice(SetPrice value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (setPrice != null) {
      return setPrice(this);
    }
    return orElse();
  }
}

abstract class SetPrice implements PaymentEvent {
  const factory SetPrice(int price) = _$SetPrice;

  int get price;
  $SetPriceCopyWith<SetPrice> get copyWith;
}

class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

// ignore: unused_element
  PaymentInitial paymentInitial() {
    return const PaymentInitial();
  }

// ignore: unused_element
  PaymentInitialized paymentInitialized() {
    return const PaymentInitialized();
  }

// ignore: unused_element
  PaymentFailed paymentFailed(Failure failure) {
    return PaymentFailed(
      failure,
    );
  }

// ignore: unused_element
  PaymentSucceeded paymentSucceeded() {
    return const PaymentSucceeded();
  }

// ignore: unused_element
  PaymentLoading paymentLoading() {
    return const PaymentLoading();
  }
}

// ignore: unused_element
const $PaymentState = _$PaymentStateTearOff();

mixin _$PaymentState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result paymentInitial(),
    @required Result paymentInitialized(),
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
    Result paymentInitialized(),
    Result paymentFailed(Failure failure),
    Result paymentSucceeded(),
    Result paymentLoading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result paymentInitial(PaymentInitial value),
    @required Result paymentInitialized(PaymentInitialized value),
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
    Result paymentInitialized(PaymentInitialized value),
    Result paymentFailed(PaymentFailed value),
    Result paymentSucceeded(PaymentSucceeded value),
    Result paymentLoading(PaymentLoading value),
    @required Result orElse(),
  });
}

abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
}

class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;
}

abstract class $PaymentInitialCopyWith<$Res> {
  factory $PaymentInitialCopyWith(
          PaymentInitial value, $Res Function(PaymentInitial) then) =
      _$PaymentInitialCopyWithImpl<$Res>;
}

class _$PaymentInitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentInitialCopyWith<$Res> {
  _$PaymentInitialCopyWithImpl(
      PaymentInitial _value, $Res Function(PaymentInitial) _then)
      : super(_value, (v) => _then(v as PaymentInitial));

  @override
  PaymentInitial get _value => super._value as PaymentInitial;
}

class _$PaymentInitial implements PaymentInitial {
  const _$PaymentInitial();

  @override
  String toString() {
    return 'PaymentState.paymentInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PaymentInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result paymentInitial(),
    @required Result paymentInitialized(),
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentInitial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
    Result paymentInitialized(),
    Result paymentFailed(Failure failure),
    Result paymentSucceeded(),
    Result paymentLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentInitial != null) {
      return paymentInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result paymentInitial(PaymentInitial value),
    @required Result paymentInitialized(PaymentInitialized value),
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentInitial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
    Result paymentInitialized(PaymentInitialized value),
    Result paymentFailed(PaymentFailed value),
    Result paymentSucceeded(PaymentSucceeded value),
    Result paymentLoading(PaymentLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentInitial != null) {
      return paymentInitial(this);
    }
    return orElse();
  }
}

abstract class PaymentInitial implements PaymentState {
  const factory PaymentInitial() = _$PaymentInitial;
}

abstract class $PaymentInitializedCopyWith<$Res> {
  factory $PaymentInitializedCopyWith(
          PaymentInitialized value, $Res Function(PaymentInitialized) then) =
      _$PaymentInitializedCopyWithImpl<$Res>;
}

class _$PaymentInitializedCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentInitializedCopyWith<$Res> {
  _$PaymentInitializedCopyWithImpl(
      PaymentInitialized _value, $Res Function(PaymentInitialized) _then)
      : super(_value, (v) => _then(v as PaymentInitialized));

  @override
  PaymentInitialized get _value => super._value as PaymentInitialized;
}

class _$PaymentInitialized implements PaymentInitialized {
  const _$PaymentInitialized();

  @override
  String toString() {
    return 'PaymentState.paymentInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PaymentInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result paymentInitial(),
    @required Result paymentInitialized(),
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentInitialized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
    Result paymentInitialized(),
    Result paymentFailed(Failure failure),
    Result paymentSucceeded(),
    Result paymentLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentInitialized != null) {
      return paymentInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result paymentInitial(PaymentInitial value),
    @required Result paymentInitialized(PaymentInitialized value),
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentInitialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
    Result paymentInitialized(PaymentInitialized value),
    Result paymentFailed(PaymentFailed value),
    Result paymentSucceeded(PaymentSucceeded value),
    Result paymentLoading(PaymentLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentInitialized != null) {
      return paymentInitialized(this);
    }
    return orElse();
  }
}

abstract class PaymentInitialized implements PaymentState {
  const factory PaymentInitialized() = _$PaymentInitialized;
}

abstract class $PaymentFailedCopyWith<$Res> {
  factory $PaymentFailedCopyWith(
          PaymentFailed value, $Res Function(PaymentFailed) then) =
      _$PaymentFailedCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$PaymentFailedCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentFailedCopyWith<$Res> {
  _$PaymentFailedCopyWithImpl(
      PaymentFailed _value, $Res Function(PaymentFailed) _then)
      : super(_value, (v) => _then(v as PaymentFailed));

  @override
  PaymentFailed get _value => super._value as PaymentFailed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(PaymentFailed(
      failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$PaymentFailed implements PaymentFailed {
  const _$PaymentFailed(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'PaymentState.paymentFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaymentFailed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $PaymentFailedCopyWith<PaymentFailed> get copyWith =>
      _$PaymentFailedCopyWithImpl<PaymentFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result paymentInitial(),
    @required Result paymentInitialized(),
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentFailed(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
    Result paymentInitialized(),
    Result paymentFailed(Failure failure),
    Result paymentSucceeded(),
    Result paymentLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentFailed != null) {
      return paymentFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result paymentInitial(PaymentInitial value),
    @required Result paymentInitialized(PaymentInitialized value),
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
    Result paymentInitialized(PaymentInitialized value),
    Result paymentFailed(PaymentFailed value),
    Result paymentSucceeded(PaymentSucceeded value),
    Result paymentLoading(PaymentLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentFailed != null) {
      return paymentFailed(this);
    }
    return orElse();
  }
}

abstract class PaymentFailed implements PaymentState {
  const factory PaymentFailed(Failure failure) = _$PaymentFailed;

  Failure get failure;
  $PaymentFailedCopyWith<PaymentFailed> get copyWith;
}

abstract class $PaymentSucceededCopyWith<$Res> {
  factory $PaymentSucceededCopyWith(
          PaymentSucceeded value, $Res Function(PaymentSucceeded) then) =
      _$PaymentSucceededCopyWithImpl<$Res>;
}

class _$PaymentSucceededCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentSucceededCopyWith<$Res> {
  _$PaymentSucceededCopyWithImpl(
      PaymentSucceeded _value, $Res Function(PaymentSucceeded) _then)
      : super(_value, (v) => _then(v as PaymentSucceeded));

  @override
  PaymentSucceeded get _value => super._value as PaymentSucceeded;
}

class _$PaymentSucceeded implements PaymentSucceeded {
  const _$PaymentSucceeded();

  @override
  String toString() {
    return 'PaymentState.paymentSucceeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PaymentSucceeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result paymentInitial(),
    @required Result paymentInitialized(),
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentSucceeded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
    Result paymentInitialized(),
    Result paymentFailed(Failure failure),
    Result paymentSucceeded(),
    Result paymentLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentSucceeded != null) {
      return paymentSucceeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result paymentInitial(PaymentInitial value),
    @required Result paymentInitialized(PaymentInitialized value),
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentSucceeded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
    Result paymentInitialized(PaymentInitialized value),
    Result paymentFailed(PaymentFailed value),
    Result paymentSucceeded(PaymentSucceeded value),
    Result paymentLoading(PaymentLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentSucceeded != null) {
      return paymentSucceeded(this);
    }
    return orElse();
  }
}

abstract class PaymentSucceeded implements PaymentState {
  const factory PaymentSucceeded() = _$PaymentSucceeded;
}

abstract class $PaymentLoadingCopyWith<$Res> {
  factory $PaymentLoadingCopyWith(
          PaymentLoading value, $Res Function(PaymentLoading) then) =
      _$PaymentLoadingCopyWithImpl<$Res>;
}

class _$PaymentLoadingCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res>
    implements $PaymentLoadingCopyWith<$Res> {
  _$PaymentLoadingCopyWithImpl(
      PaymentLoading _value, $Res Function(PaymentLoading) _then)
      : super(_value, (v) => _then(v as PaymentLoading));

  @override
  PaymentLoading get _value => super._value as PaymentLoading;
}

class _$PaymentLoading implements PaymentLoading {
  const _$PaymentLoading();

  @override
  String toString() {
    return 'PaymentState.paymentLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PaymentLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result paymentInitial(),
    @required Result paymentInitialized(),
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
    Result paymentInitialized(),
    Result paymentFailed(Failure failure),
    Result paymentSucceeded(),
    Result paymentLoading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentLoading != null) {
      return paymentLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result paymentInitial(PaymentInitial value),
    @required Result paymentInitialized(PaymentInitialized value),
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentInitialized != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
    Result paymentInitialized(PaymentInitialized value),
    Result paymentFailed(PaymentFailed value),
    Result paymentSucceeded(PaymentSucceeded value),
    Result paymentLoading(PaymentLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paymentLoading != null) {
      return paymentLoading(this);
    }
    return orElse();
  }
}

abstract class PaymentLoading implements PaymentState {
  const factory PaymentLoading() = _$PaymentLoading;
}
