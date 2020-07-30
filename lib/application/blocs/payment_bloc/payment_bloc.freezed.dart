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
  MakePayment makePayment(int chargeAmount, BuildContext context) {
    return MakePayment(
      chargeAmount,
      context,
    );
  }
}

// ignore: unused_element
const $PaymentEvent = _$PaymentEventTearOff();

mixin _$PaymentEvent {
  int get chargeAmount;
  BuildContext get context;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result makePayment(int chargeAmount, BuildContext context),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result makePayment(int chargeAmount, BuildContext context),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result makePayment(MakePayment value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result makePayment(MakePayment value),
    @required Result orElse(),
  });

  $PaymentEventCopyWith<PaymentEvent> get copyWith;
}

abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
  $Res call({int chargeAmount, BuildContext context});
}

class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;

  @override
  $Res call({
    Object chargeAmount = freezed,
    Object context = freezed,
  }) {
    return _then(_value.copyWith(
      chargeAmount:
          chargeAmount == freezed ? _value.chargeAmount : chargeAmount as int,
      context: context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

abstract class $MakePaymentCopyWith<$Res>
    implements $PaymentEventCopyWith<$Res> {
  factory $MakePaymentCopyWith(
          MakePayment value, $Res Function(MakePayment) then) =
      _$MakePaymentCopyWithImpl<$Res>;
  @override
  $Res call({int chargeAmount, BuildContext context});
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
    Object chargeAmount = freezed,
    Object context = freezed,
  }) {
    return _then(MakePayment(
      chargeAmount == freezed ? _value.chargeAmount : chargeAmount as int,
      context == freezed ? _value.context : context as BuildContext,
    ));
  }
}

class _$MakePayment implements MakePayment {
  const _$MakePayment(this.chargeAmount, this.context)
      : assert(chargeAmount != null),
        assert(context != null);

  @override
  final int chargeAmount;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'PaymentEvent.makePayment(chargeAmount: $chargeAmount, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MakePayment &&
            (identical(other.chargeAmount, chargeAmount) ||
                const DeepCollectionEquality()
                    .equals(other.chargeAmount, chargeAmount)) &&
            (identical(other.context, context) ||
                const DeepCollectionEquality().equals(other.context, context)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chargeAmount) ^
      const DeepCollectionEquality().hash(context);

  @override
  $MakePaymentCopyWith<MakePayment> get copyWith =>
      _$MakePaymentCopyWithImpl<MakePayment>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result makePayment(int chargeAmount, BuildContext context),
  }) {
    assert(makePayment != null);
    return makePayment(chargeAmount, context);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result makePayment(int chargeAmount, BuildContext context),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (makePayment != null) {
      return makePayment(chargeAmount, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result makePayment(MakePayment value),
  }) {
    assert(makePayment != null);
    return makePayment(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result makePayment(MakePayment value),
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
  const factory MakePayment(int chargeAmount, BuildContext context) =
      _$MakePayment;

  @override
  int get chargeAmount;
  @override
  BuildContext get context;
  @override
  $MakePaymentCopyWith<MakePayment> get copyWith;
}

class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

// ignore: unused_element
  PaymentInitial paymentInitial() {
    return const PaymentInitial();
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
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
    Result paymentFailed(Failure failure),
    Result paymentSucceeded(),
    Result paymentLoading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result paymentInitial(PaymentInitial value),
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
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
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentInitial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
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
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentInitial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
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
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentFailed(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
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
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentFailed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
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
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentSucceeded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
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
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentSucceeded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
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
    @required Result paymentFailed(Failure failure),
    @required Result paymentSucceeded(),
    @required Result paymentLoading(),
  }) {
    assert(paymentInitial != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentLoading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result paymentInitial(),
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
    @required Result paymentFailed(PaymentFailed value),
    @required Result paymentSucceeded(PaymentSucceeded value),
    @required Result paymentLoading(PaymentLoading value),
  }) {
    assert(paymentInitial != null);
    assert(paymentFailed != null);
    assert(paymentSucceeded != null);
    assert(paymentLoading != null);
    return paymentLoading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result paymentInitial(PaymentInitial value),
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
