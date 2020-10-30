// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

// ignore: unused_element
  RegisterUser register({User user, String password}) {
    return RegisterUser(
      user: user,
      password: password,
    );
  }

// ignore: unused_element
  GetCode getCode(String phoneNumber) {
    return GetCode(
      phoneNumber,
    );
  }

// ignore: unused_element
  MobileVerify mobileVerify(String phoneNumber, String code) {
    return MobileVerify(
      phoneNumber,
      code,
    );
  }
}

// ignore: unused_element
const $RegisterEvent = _$RegisterEventTearOff();

mixin _$RegisterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result register(User user, String password),
    @required Result getCode(String phoneNumber),
    @required Result mobileVerify(String phoneNumber, String code),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result register(User user, String password),
    Result getCode(String phoneNumber),
    Result mobileVerify(String phoneNumber, String code),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result register(RegisterUser value),
    @required Result getCode(GetCode value),
    @required Result mobileVerify(MobileVerify value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result register(RegisterUser value),
    Result getCode(GetCode value),
    Result mobileVerify(MobileVerify value),
    @required Result orElse(),
  });
}

abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

abstract class $RegisterUserCopyWith<$Res> {
  factory $RegisterUserCopyWith(
          RegisterUser value, $Res Function(RegisterUser) then) =
      _$RegisterUserCopyWithImpl<$Res>;
  $Res call({User user, String password});
}

class _$RegisterUserCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterUserCopyWith<$Res> {
  _$RegisterUserCopyWithImpl(
      RegisterUser _value, $Res Function(RegisterUser) _then)
      : super(_value, (v) => _then(v as RegisterUser));

  @override
  RegisterUser get _value => super._value as RegisterUser;

  @override
  $Res call({
    Object user = freezed,
    Object password = freezed,
  }) {
    return _then(RegisterUser(
      user: user == freezed ? _value.user : user as User,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$RegisterUser implements RegisterUser {
  const _$RegisterUser({this.user, this.password});

  @override
  final User user;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.register(user: $user, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(password);

  @override
  $RegisterUserCopyWith<RegisterUser> get copyWith =>
      _$RegisterUserCopyWithImpl<RegisterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result register(User user, String password),
    @required Result getCode(String phoneNumber),
    @required Result mobileVerify(String phoneNumber, String code),
  }) {
    assert(register != null);
    assert(getCode != null);
    assert(mobileVerify != null);
    return register(user, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result register(User user, String password),
    Result getCode(String phoneNumber),
    Result mobileVerify(String phoneNumber, String code),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register(user, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result register(RegisterUser value),
    @required Result getCode(GetCode value),
    @required Result mobileVerify(MobileVerify value),
  }) {
    assert(register != null);
    assert(getCode != null);
    assert(mobileVerify != null);
    return register(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result register(RegisterUser value),
    Result getCode(GetCode value),
    Result mobileVerify(MobileVerify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements RegisterEvent {
  const factory RegisterUser({User user, String password}) = _$RegisterUser;

  User get user;
  String get password;
  $RegisterUserCopyWith<RegisterUser> get copyWith;
}

abstract class $GetCodeCopyWith<$Res> {
  factory $GetCodeCopyWith(GetCode value, $Res Function(GetCode) then) =
      _$GetCodeCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

class _$GetCodeCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $GetCodeCopyWith<$Res> {
  _$GetCodeCopyWithImpl(GetCode _value, $Res Function(GetCode) _then)
      : super(_value, (v) => _then(v as GetCode));

  @override
  GetCode get _value => super._value as GetCode;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(GetCode(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

class _$GetCode implements GetCode {
  const _$GetCode(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterEvent.getCode(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCode &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @override
  $GetCodeCopyWith<GetCode> get copyWith =>
      _$GetCodeCopyWithImpl<GetCode>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result register(User user, String password),
    @required Result getCode(String phoneNumber),
    @required Result mobileVerify(String phoneNumber, String code),
  }) {
    assert(register != null);
    assert(getCode != null);
    assert(mobileVerify != null);
    return getCode(phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result register(User user, String password),
    Result getCode(String phoneNumber),
    Result mobileVerify(String phoneNumber, String code),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCode != null) {
      return getCode(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result register(RegisterUser value),
    @required Result getCode(GetCode value),
    @required Result mobileVerify(MobileVerify value),
  }) {
    assert(register != null);
    assert(getCode != null);
    assert(mobileVerify != null);
    return getCode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result register(RegisterUser value),
    Result getCode(GetCode value),
    Result mobileVerify(MobileVerify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCode != null) {
      return getCode(this);
    }
    return orElse();
  }
}

abstract class GetCode implements RegisterEvent {
  const factory GetCode(String phoneNumber) = _$GetCode;

  String get phoneNumber;
  $GetCodeCopyWith<GetCode> get copyWith;
}

abstract class $MobileVerifyCopyWith<$Res> {
  factory $MobileVerifyCopyWith(
          MobileVerify value, $Res Function(MobileVerify) then) =
      _$MobileVerifyCopyWithImpl<$Res>;
  $Res call({String phoneNumber, String code});
}

class _$MobileVerifyCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $MobileVerifyCopyWith<$Res> {
  _$MobileVerifyCopyWithImpl(
      MobileVerify _value, $Res Function(MobileVerify) _then)
      : super(_value, (v) => _then(v as MobileVerify));

  @override
  MobileVerify get _value => super._value as MobileVerify;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object code = freezed,
  }) {
    return _then(MobileVerify(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      code == freezed ? _value.code : code as String,
    ));
  }
}

class _$MobileVerify implements MobileVerify {
  const _$MobileVerify(this.phoneNumber, this.code)
      : assert(phoneNumber != null),
        assert(code != null);

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'RegisterEvent.mobileVerify(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MobileVerify &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(code);

  @override
  $MobileVerifyCopyWith<MobileVerify> get copyWith =>
      _$MobileVerifyCopyWithImpl<MobileVerify>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result register(User user, String password),
    @required Result getCode(String phoneNumber),
    @required Result mobileVerify(String phoneNumber, String code),
  }) {
    assert(register != null);
    assert(getCode != null);
    assert(mobileVerify != null);
    return mobileVerify(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result register(User user, String password),
    Result getCode(String phoneNumber),
    Result mobileVerify(String phoneNumber, String code),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mobileVerify != null) {
      return mobileVerify(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result register(RegisterUser value),
    @required Result getCode(GetCode value),
    @required Result mobileVerify(MobileVerify value),
  }) {
    assert(register != null);
    assert(getCode != null);
    assert(mobileVerify != null);
    return mobileVerify(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result register(RegisterUser value),
    Result getCode(GetCode value),
    Result mobileVerify(MobileVerify value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mobileVerify != null) {
      return mobileVerify(this);
    }
    return orElse();
  }
}

abstract class MobileVerify implements RegisterEvent {
  const factory MobileVerify(String phoneNumber, String code) = _$MobileVerify;

  String get phoneNumber;
  String get code;
  $MobileVerifyCopyWith<MobileVerify> get copyWith;
}

class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

// ignore: unused_element
  RegisterUserInitial initial() {
    return const RegisterUserInitial();
  }

// ignore: unused_element
  RegisterComplete registerComplete(String phoneNumber) {
    return RegisterComplete(
      phoneNumber,
    );
  }

// ignore: unused_element
  GetCodeComplete getCodeComplete(String code) {
    return GetCodeComplete(
      code,
    );
  }

// ignore: unused_element
  VerifyComplete verifyComplete(User user) {
    return VerifyComplete(
      user,
    );
  }

// ignore: unused_element
  RegisterLoading loading() {
    return const RegisterLoading();
  }

// ignore: unused_element
  RegisterError error(Failure failure) {
    return RegisterError(
      failure,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registerComplete(String phoneNumber),
    @required Result getCodeComplete(String code),
    @required Result verifyComplete(User user),
    @required Result loading(),
    @required Result error(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registerComplete(String phoneNumber),
    Result getCodeComplete(String code),
    Result verifyComplete(User user),
    Result loading(),
    Result error(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(RegisterUserInitial value),
    @required Result registerComplete(RegisterComplete value),
    @required Result getCodeComplete(GetCodeComplete value),
    @required Result verifyComplete(VerifyComplete value),
    @required Result loading(RegisterLoading value),
    @required Result error(RegisterError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RegisterUserInitial value),
    Result registerComplete(RegisterComplete value),
    Result getCodeComplete(GetCodeComplete value),
    Result verifyComplete(VerifyComplete value),
    Result loading(RegisterLoading value),
    Result error(RegisterError value),
    @required Result orElse(),
  });
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;
}

abstract class $RegisterUserInitialCopyWith<$Res> {
  factory $RegisterUserInitialCopyWith(
          RegisterUserInitial value, $Res Function(RegisterUserInitial) then) =
      _$RegisterUserInitialCopyWithImpl<$Res>;
}

class _$RegisterUserInitialCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterUserInitialCopyWith<$Res> {
  _$RegisterUserInitialCopyWithImpl(
      RegisterUserInitial _value, $Res Function(RegisterUserInitial) _then)
      : super(_value, (v) => _then(v as RegisterUserInitial));

  @override
  RegisterUserInitial get _value => super._value as RegisterUserInitial;
}

class _$RegisterUserInitial implements RegisterUserInitial {
  const _$RegisterUserInitial();

  @override
  String toString() {
    return 'RegisterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterUserInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registerComplete(String phoneNumber),
    @required Result getCodeComplete(String code),
    @required Result verifyComplete(User user),
    @required Result loading(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registerComplete(String phoneNumber),
    Result getCodeComplete(String code),
    Result verifyComplete(User user),
    Result loading(),
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
    @required Result initial(RegisterUserInitial value),
    @required Result registerComplete(RegisterComplete value),
    @required Result getCodeComplete(GetCodeComplete value),
    @required Result verifyComplete(VerifyComplete value),
    @required Result loading(RegisterLoading value),
    @required Result error(RegisterError value),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RegisterUserInitial value),
    Result registerComplete(RegisterComplete value),
    Result getCodeComplete(GetCodeComplete value),
    Result verifyComplete(VerifyComplete value),
    Result loading(RegisterLoading value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegisterUserInitial implements RegisterState {
  const factory RegisterUserInitial() = _$RegisterUserInitial;
}

abstract class $RegisterCompleteCopyWith<$Res> {
  factory $RegisterCompleteCopyWith(
          RegisterComplete value, $Res Function(RegisterComplete) then) =
      _$RegisterCompleteCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

class _$RegisterCompleteCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterCompleteCopyWith<$Res> {
  _$RegisterCompleteCopyWithImpl(
      RegisterComplete _value, $Res Function(RegisterComplete) _then)
      : super(_value, (v) => _then(v as RegisterComplete));

  @override
  RegisterComplete get _value => super._value as RegisterComplete;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(RegisterComplete(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

class _$RegisterComplete implements RegisterComplete {
  const _$RegisterComplete(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterState.registerComplete(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterComplete &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @override
  $RegisterCompleteCopyWith<RegisterComplete> get copyWith =>
      _$RegisterCompleteCopyWithImpl<RegisterComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registerComplete(String phoneNumber),
    @required Result getCodeComplete(String code),
    @required Result verifyComplete(User user),
    @required Result loading(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return registerComplete(phoneNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registerComplete(String phoneNumber),
    Result getCodeComplete(String code),
    Result verifyComplete(User user),
    Result loading(),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerComplete != null) {
      return registerComplete(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(RegisterUserInitial value),
    @required Result registerComplete(RegisterComplete value),
    @required Result getCodeComplete(GetCodeComplete value),
    @required Result verifyComplete(VerifyComplete value),
    @required Result loading(RegisterLoading value),
    @required Result error(RegisterError value),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return registerComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RegisterUserInitial value),
    Result registerComplete(RegisterComplete value),
    Result getCodeComplete(GetCodeComplete value),
    Result verifyComplete(VerifyComplete value),
    Result loading(RegisterLoading value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerComplete != null) {
      return registerComplete(this);
    }
    return orElse();
  }
}

abstract class RegisterComplete implements RegisterState {
  const factory RegisterComplete(String phoneNumber) = _$RegisterComplete;

  String get phoneNumber;
  $RegisterCompleteCopyWith<RegisterComplete> get copyWith;
}

abstract class $GetCodeCompleteCopyWith<$Res> {
  factory $GetCodeCompleteCopyWith(
          GetCodeComplete value, $Res Function(GetCodeComplete) then) =
      _$GetCodeCompleteCopyWithImpl<$Res>;
  $Res call({String code});
}

class _$GetCodeCompleteCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $GetCodeCompleteCopyWith<$Res> {
  _$GetCodeCompleteCopyWithImpl(
      GetCodeComplete _value, $Res Function(GetCodeComplete) _then)
      : super(_value, (v) => _then(v as GetCodeComplete));

  @override
  GetCodeComplete get _value => super._value as GetCodeComplete;

  @override
  $Res call({
    Object code = freezed,
  }) {
    return _then(GetCodeComplete(
      code == freezed ? _value.code : code as String,
    ));
  }
}

class _$GetCodeComplete implements GetCodeComplete {
  const _$GetCodeComplete(this.code) : assert(code != null);

  @override
  final String code;

  @override
  String toString() {
    return 'RegisterState.getCodeComplete(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetCodeComplete &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @override
  $GetCodeCompleteCopyWith<GetCodeComplete> get copyWith =>
      _$GetCodeCompleteCopyWithImpl<GetCodeComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registerComplete(String phoneNumber),
    @required Result getCodeComplete(String code),
    @required Result verifyComplete(User user),
    @required Result loading(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return getCodeComplete(code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registerComplete(String phoneNumber),
    Result getCodeComplete(String code),
    Result verifyComplete(User user),
    Result loading(),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCodeComplete != null) {
      return getCodeComplete(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(RegisterUserInitial value),
    @required Result registerComplete(RegisterComplete value),
    @required Result getCodeComplete(GetCodeComplete value),
    @required Result verifyComplete(VerifyComplete value),
    @required Result loading(RegisterLoading value),
    @required Result error(RegisterError value),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return getCodeComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RegisterUserInitial value),
    Result registerComplete(RegisterComplete value),
    Result getCodeComplete(GetCodeComplete value),
    Result verifyComplete(VerifyComplete value),
    Result loading(RegisterLoading value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCodeComplete != null) {
      return getCodeComplete(this);
    }
    return orElse();
  }
}

abstract class GetCodeComplete implements RegisterState {
  const factory GetCodeComplete(String code) = _$GetCodeComplete;

  String get code;
  $GetCodeCompleteCopyWith<GetCodeComplete> get copyWith;
}

abstract class $VerifyCompleteCopyWith<$Res> {
  factory $VerifyCompleteCopyWith(
          VerifyComplete value, $Res Function(VerifyComplete) then) =
      _$VerifyCompleteCopyWithImpl<$Res>;
  $Res call({User user});
}

class _$VerifyCompleteCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $VerifyCompleteCopyWith<$Res> {
  _$VerifyCompleteCopyWithImpl(
      VerifyComplete _value, $Res Function(VerifyComplete) _then)
      : super(_value, (v) => _then(v as VerifyComplete));

  @override
  VerifyComplete get _value => super._value as VerifyComplete;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(VerifyComplete(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$VerifyComplete implements VerifyComplete {
  const _$VerifyComplete(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'RegisterState.verifyComplete(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VerifyComplete &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $VerifyCompleteCopyWith<VerifyComplete> get copyWith =>
      _$VerifyCompleteCopyWithImpl<VerifyComplete>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registerComplete(String phoneNumber),
    @required Result getCodeComplete(String code),
    @required Result verifyComplete(User user),
    @required Result loading(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return verifyComplete(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registerComplete(String phoneNumber),
    Result getCodeComplete(String code),
    Result verifyComplete(User user),
    Result loading(),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyComplete != null) {
      return verifyComplete(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(RegisterUserInitial value),
    @required Result registerComplete(RegisterComplete value),
    @required Result getCodeComplete(GetCodeComplete value),
    @required Result verifyComplete(VerifyComplete value),
    @required Result loading(RegisterLoading value),
    @required Result error(RegisterError value),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return verifyComplete(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RegisterUserInitial value),
    Result registerComplete(RegisterComplete value),
    Result getCodeComplete(GetCodeComplete value),
    Result verifyComplete(VerifyComplete value),
    Result loading(RegisterLoading value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (verifyComplete != null) {
      return verifyComplete(this);
    }
    return orElse();
  }
}

abstract class VerifyComplete implements RegisterState {
  const factory VerifyComplete(User user) = _$VerifyComplete;

  User get user;
  $VerifyCompleteCopyWith<VerifyComplete> get copyWith;
}

abstract class $RegisterLoadingCopyWith<$Res> {
  factory $RegisterLoadingCopyWith(
          RegisterLoading value, $Res Function(RegisterLoading) then) =
      _$RegisterLoadingCopyWithImpl<$Res>;
}

class _$RegisterLoadingCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterLoadingCopyWith<$Res> {
  _$RegisterLoadingCopyWithImpl(
      RegisterLoading _value, $Res Function(RegisterLoading) _then)
      : super(_value, (v) => _then(v as RegisterLoading));

  @override
  RegisterLoading get _value => super._value as RegisterLoading;
}

class _$RegisterLoading implements RegisterLoading {
  const _$RegisterLoading();

  @override
  String toString() {
    return 'RegisterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registerComplete(String phoneNumber),
    @required Result getCodeComplete(String code),
    @required Result verifyComplete(User user),
    @required Result loading(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registerComplete(String phoneNumber),
    Result getCodeComplete(String code),
    Result verifyComplete(User user),
    Result loading(),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(RegisterUserInitial value),
    @required Result registerComplete(RegisterComplete value),
    @required Result getCodeComplete(GetCodeComplete value),
    @required Result verifyComplete(VerifyComplete value),
    @required Result loading(RegisterLoading value),
    @required Result error(RegisterError value),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RegisterUserInitial value),
    Result registerComplete(RegisterComplete value),
    Result getCodeComplete(GetCodeComplete value),
    Result verifyComplete(VerifyComplete value),
    Result loading(RegisterLoading value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading implements RegisterState {
  const factory RegisterLoading() = _$RegisterLoading;
}

abstract class $RegisterErrorCopyWith<$Res> {
  factory $RegisterErrorCopyWith(
          RegisterError value, $Res Function(RegisterError) then) =
      _$RegisterErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$RegisterErrorCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterErrorCopyWith<$Res> {
  _$RegisterErrorCopyWithImpl(
      RegisterError _value, $Res Function(RegisterError) _then)
      : super(_value, (v) => _then(v as RegisterError));

  @override
  RegisterError get _value => super._value as RegisterError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(RegisterError(
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

class _$RegisterError implements RegisterError {
  const _$RegisterError(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'RegisterState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $RegisterErrorCopyWith<RegisterError> get copyWith =>
      _$RegisterErrorCopyWithImpl<RegisterError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result registerComplete(String phoneNumber),
    @required Result getCodeComplete(String code),
    @required Result verifyComplete(User user),
    @required Result loading(),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result registerComplete(String phoneNumber),
    Result getCodeComplete(String code),
    Result verifyComplete(User user),
    Result loading(),
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
    @required Result initial(RegisterUserInitial value),
    @required Result registerComplete(RegisterComplete value),
    @required Result getCodeComplete(GetCodeComplete value),
    @required Result verifyComplete(VerifyComplete value),
    @required Result loading(RegisterLoading value),
    @required Result error(RegisterError value),
  }) {
    assert(initial != null);
    assert(registerComplete != null);
    assert(getCodeComplete != null);
    assert(verifyComplete != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(RegisterUserInitial value),
    Result registerComplete(RegisterComplete value),
    Result getCodeComplete(GetCodeComplete value),
    Result verifyComplete(VerifyComplete value),
    Result loading(RegisterLoading value),
    Result error(RegisterError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterError implements RegisterState {
  const factory RegisterError(Failure failure) = _$RegisterError;

  Failure get failure;
  $RegisterErrorCopyWith<RegisterError> get copyWith;
}
