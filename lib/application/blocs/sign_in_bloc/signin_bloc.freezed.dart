// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInEventTearOff {
  const _$SignInEventTearOff();

// ignore: unused_element
  SignInEventOnSubmit onSubmit(String phoneNumber, String password) {
    return SignInEventOnSubmit(
      phoneNumber,
      password,
    );
  }

// ignore: unused_element
  SignInEventRegister register() {
    return const SignInEventRegister();
  }
}

// ignore: unused_element
const $SignInEvent = _$SignInEventTearOff();

mixin _$SignInEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSubmit(String phoneNumber, String password),
    @required Result register(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSubmit(String phoneNumber, String password),
    Result register(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSubmit(SignInEventOnSubmit value),
    @required Result register(SignInEventRegister value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSubmit(SignInEventOnSubmit value),
    Result register(SignInEventRegister value),
    @required Result orElse(),
  });
}

abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

abstract class $SignInEventOnSubmitCopyWith<$Res> {
  factory $SignInEventOnSubmitCopyWith(
          SignInEventOnSubmit value, $Res Function(SignInEventOnSubmit) then) =
      _$SignInEventOnSubmitCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String password});
}

class _$SignInEventOnSubmitCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInEventOnSubmitCopyWith<$Res> {
  _$SignInEventOnSubmitCopyWithImpl(
      SignInEventOnSubmit _value, $Res Function(SignInEventOnSubmit) _then)
      : super(_value, (v) => _then(v as SignInEventOnSubmit));

  @override
  SignInEventOnSubmit get _value => super._value as SignInEventOnSubmit;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object password = freezed,
  }) {
    return _then(SignInEventOnSubmit(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$SignInEventOnSubmit implements SignInEventOnSubmit {
  const _$SignInEventOnSubmit(this.phoneNumber, this.password)
      : assert(phoneNumber != null),
        assert(password != null);

  @override
  final String phoneNumber;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.onSubmit(phoneNumber: $phoneNumber, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInEventOnSubmit &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password);

  @override
  $SignInEventOnSubmitCopyWith<SignInEventOnSubmit> get copyWith =>
      _$SignInEventOnSubmitCopyWithImpl<SignInEventOnSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSubmit(String phoneNumber, String password),
    @required Result register(),
  }) {
    assert(onSubmit != null);
    assert(register != null);
    return onSubmit(phoneNumber, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSubmit(String phoneNumber, String password),
    Result register(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSubmit != null) {
      return onSubmit(phoneNumber, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSubmit(SignInEventOnSubmit value),
    @required Result register(SignInEventRegister value),
  }) {
    assert(onSubmit != null);
    assert(register != null);
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSubmit(SignInEventOnSubmit value),
    Result register(SignInEventRegister value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class SignInEventOnSubmit implements SignInEvent {
  const factory SignInEventOnSubmit(String phoneNumber, String password) =
      _$SignInEventOnSubmit;

  String get phoneNumber;
  String get password;
  $SignInEventOnSubmitCopyWith<SignInEventOnSubmit> get copyWith;
}

abstract class $SignInEventRegisterCopyWith<$Res> {
  factory $SignInEventRegisterCopyWith(
          SignInEventRegister value, $Res Function(SignInEventRegister) then) =
      _$SignInEventRegisterCopyWithImpl<$Res>;
}

class _$SignInEventRegisterCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInEventRegisterCopyWith<$Res> {
  _$SignInEventRegisterCopyWithImpl(
      SignInEventRegister _value, $Res Function(SignInEventRegister) _then)
      : super(_value, (v) => _then(v as SignInEventRegister));

  @override
  SignInEventRegister get _value => super._value as SignInEventRegister;
}

class _$SignInEventRegister implements SignInEventRegister {
  const _$SignInEventRegister();

  @override
  String toString() {
    return 'SignInEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInEventRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSubmit(String phoneNumber, String password),
    @required Result register(),
  }) {
    assert(onSubmit != null);
    assert(register != null);
    return register();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSubmit(String phoneNumber, String password),
    Result register(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSubmit(SignInEventOnSubmit value),
    @required Result register(SignInEventRegister value),
  }) {
    assert(onSubmit != null);
    assert(register != null);
    return register(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSubmit(SignInEventOnSubmit value),
    Result register(SignInEventRegister value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class SignInEventRegister implements SignInEvent {
  const factory SignInEventRegister() = _$SignInEventRegister;
}

class _$SignInStateTearOff {
  const _$SignInStateTearOff();

// ignore: unused_element
  SignInStateInitial initial() {
    return const SignInStateInitial();
  }

// ignore: unused_element
  SignInStateAuthenticating authenticating() {
    return const SignInStateAuthenticating();
  }

// ignore: unused_element
  SignInStateAuthenticated authenticated() {
    return const SignInStateAuthenticated();
  }

// ignore: unused_element
  SignInStateError error(Failure failure) {
    return SignInStateError(
      failure,
    );
  }
}

// ignore: unused_element
const $SignInState = _$SignInStateTearOff();

mixin _$SignInState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticating(),
    @required Result authenticated(),
    @required Result error(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticating(),
    Result authenticated(),
    Result error(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(SignInStateInitial value),
    @required Result authenticating(SignInStateAuthenticating value),
    @required Result authenticated(SignInStateAuthenticated value),
    @required Result error(SignInStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(SignInStateInitial value),
    Result authenticating(SignInStateAuthenticating value),
    Result authenticated(SignInStateAuthenticated value),
    Result error(SignInStateError value),
    @required Result orElse(),
  });
}

abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
}

class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;
}

abstract class $SignInStateInitialCopyWith<$Res> {
  factory $SignInStateInitialCopyWith(
          SignInStateInitial value, $Res Function(SignInStateInitial) then) =
      _$SignInStateInitialCopyWithImpl<$Res>;
}

class _$SignInStateInitialCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateInitialCopyWith<$Res> {
  _$SignInStateInitialCopyWithImpl(
      SignInStateInitial _value, $Res Function(SignInStateInitial) _then)
      : super(_value, (v) => _then(v as SignInStateInitial));

  @override
  SignInStateInitial get _value => super._value as SignInStateInitial;
}

class _$SignInStateInitial implements SignInStateInitial {
  const _$SignInStateInitial();

  @override
  String toString() {
    return 'SignInState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticating(),
    @required Result authenticated(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticating(),
    Result authenticated(),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(SignInStateInitial value),
    @required Result authenticating(SignInStateAuthenticating value),
    @required Result authenticated(SignInStateAuthenticated value),
    @required Result error(SignInStateError value),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(SignInStateInitial value),
    Result authenticating(SignInStateAuthenticating value),
    Result authenticated(SignInStateAuthenticated value),
    Result error(SignInStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignInStateInitial implements SignInState {
  const factory SignInStateInitial() = _$SignInStateInitial;
}

abstract class $SignInStateAuthenticatingCopyWith<$Res> {
  factory $SignInStateAuthenticatingCopyWith(SignInStateAuthenticating value,
          $Res Function(SignInStateAuthenticating) then) =
      _$SignInStateAuthenticatingCopyWithImpl<$Res>;
}

class _$SignInStateAuthenticatingCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateAuthenticatingCopyWith<$Res> {
  _$SignInStateAuthenticatingCopyWithImpl(SignInStateAuthenticating _value,
      $Res Function(SignInStateAuthenticating) _then)
      : super(_value, (v) => _then(v as SignInStateAuthenticating));

  @override
  SignInStateAuthenticating get _value =>
      super._value as SignInStateAuthenticating;
}

class _$SignInStateAuthenticating implements SignInStateAuthenticating {
  const _$SignInStateAuthenticating();

  @override
  String toString() {
    return 'SignInState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInStateAuthenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticating(),
    @required Result authenticated(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    assert(error != null);
    return authenticating();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticating(),
    Result authenticated(),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(SignInStateInitial value),
    @required Result authenticating(SignInStateAuthenticating value),
    @required Result authenticated(SignInStateAuthenticated value),
    @required Result error(SignInStateError value),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    assert(error != null);
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(SignInStateInitial value),
    Result authenticating(SignInStateAuthenticating value),
    Result authenticated(SignInStateAuthenticated value),
    Result error(SignInStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class SignInStateAuthenticating implements SignInState {
  const factory SignInStateAuthenticating() = _$SignInStateAuthenticating;
}

abstract class $SignInStateAuthenticatedCopyWith<$Res> {
  factory $SignInStateAuthenticatedCopyWith(SignInStateAuthenticated value,
          $Res Function(SignInStateAuthenticated) then) =
      _$SignInStateAuthenticatedCopyWithImpl<$Res>;
}

class _$SignInStateAuthenticatedCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateAuthenticatedCopyWith<$Res> {
  _$SignInStateAuthenticatedCopyWithImpl(SignInStateAuthenticated _value,
      $Res Function(SignInStateAuthenticated) _then)
      : super(_value, (v) => _then(v as SignInStateAuthenticated));

  @override
  SignInStateAuthenticated get _value =>
      super._value as SignInStateAuthenticated;
}

class _$SignInStateAuthenticated implements SignInStateAuthenticated {
  const _$SignInStateAuthenticated();

  @override
  String toString() {
    return 'SignInState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInStateAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticating(),
    @required Result authenticated(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    assert(error != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticating(),
    Result authenticated(),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(SignInStateInitial value),
    @required Result authenticating(SignInStateAuthenticating value),
    @required Result authenticated(SignInStateAuthenticated value),
    @required Result error(SignInStateError value),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    assert(error != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(SignInStateInitial value),
    Result authenticating(SignInStateAuthenticating value),
    Result authenticated(SignInStateAuthenticated value),
    Result error(SignInStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class SignInStateAuthenticated implements SignInState {
  const factory SignInStateAuthenticated() = _$SignInStateAuthenticated;
}

abstract class $SignInStateErrorCopyWith<$Res> {
  factory $SignInStateErrorCopyWith(
          SignInStateError value, $Res Function(SignInStateError) then) =
      _$SignInStateErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$SignInStateErrorCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInStateErrorCopyWith<$Res> {
  _$SignInStateErrorCopyWithImpl(
      SignInStateError _value, $Res Function(SignInStateError) _then)
      : super(_value, (v) => _then(v as SignInStateError));

  @override
  SignInStateError get _value => super._value as SignInStateError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(SignInStateError(
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

class _$SignInStateError implements SignInStateError {
  const _$SignInStateError(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'SignInState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInStateError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $SignInStateErrorCopyWith<SignInStateError> get copyWith =>
      _$SignInStateErrorCopyWithImpl<SignInStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result authenticating(),
    @required Result authenticated(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result authenticating(),
    Result authenticated(),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(SignInStateInitial value),
    @required Result authenticating(SignInStateAuthenticating value),
    @required Result authenticated(SignInStateAuthenticated value),
    @required Result error(SignInStateError value),
  }) {
    assert(initial != null);
    assert(authenticating != null);
    assert(authenticated != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(SignInStateInitial value),
    Result authenticating(SignInStateAuthenticating value),
    Result authenticated(SignInStateAuthenticated value),
    Result error(SignInStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignInStateError implements SignInState {
  const factory SignInStateError(Failure failure) = _$SignInStateError;

  Failure get failure;
  $SignInStateErrorCopyWith<SignInStateError> get copyWith;
}
