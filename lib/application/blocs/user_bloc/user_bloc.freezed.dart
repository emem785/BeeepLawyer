// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserEventTearOff {
  const _$UserEventTearOff();

// ignore: unused_element
  InsertUser insertUser() {
    return const InsertUser();
  }

// ignore: unused_element
  UpdateUser updateUser(User user) {
    return UpdateUser(
      user,
    );
  }

// ignore: unused_element
  UpdatePassword updatePassword(String password) {
    return UpdatePassword(
      password,
    );
  }

// ignore: unused_element
  CacheScnNumber cacheScnNumber(String scnNumber) {
    return CacheScnNumber(
      scnNumber,
    );
  }
}

// ignore: unused_element
const $UserEvent = _$UserEventTearOff();

mixin _$UserEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insertUser(),
    @required Result updateUser(User user),
    @required Result updatePassword(String password),
    @required Result cacheScnNumber(String scnNumber),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insertUser(),
    Result updateUser(User user),
    Result updatePassword(String password),
    Result cacheScnNumber(String scnNumber),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insertUser(InsertUser value),
    @required Result updateUser(UpdateUser value),
    @required Result updatePassword(UpdatePassword value),
    @required Result cacheScnNumber(CacheScnNumber value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insertUser(InsertUser value),
    Result updateUser(UpdateUser value),
    Result updatePassword(UpdatePassword value),
    Result cacheScnNumber(CacheScnNumber value),
    @required Result orElse(),
  });
}

abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

abstract class $InsertUserCopyWith<$Res> {
  factory $InsertUserCopyWith(
          InsertUser value, $Res Function(InsertUser) then) =
      _$InsertUserCopyWithImpl<$Res>;
}

class _$InsertUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $InsertUserCopyWith<$Res> {
  _$InsertUserCopyWithImpl(InsertUser _value, $Res Function(InsertUser) _then)
      : super(_value, (v) => _then(v as InsertUser));

  @override
  InsertUser get _value => super._value as InsertUser;
}

class _$InsertUser implements InsertUser {
  const _$InsertUser();

  @override
  String toString() {
    return 'UserEvent.insertUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InsertUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insertUser(),
    @required Result updateUser(User user),
    @required Result updatePassword(String password),
    @required Result cacheScnNumber(String scnNumber),
  }) {
    assert(insertUser != null);
    assert(updateUser != null);
    assert(updatePassword != null);
    assert(cacheScnNumber != null);
    return insertUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insertUser(),
    Result updateUser(User user),
    Result updatePassword(String password),
    Result cacheScnNumber(String scnNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insertUser != null) {
      return insertUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insertUser(InsertUser value),
    @required Result updateUser(UpdateUser value),
    @required Result updatePassword(UpdatePassword value),
    @required Result cacheScnNumber(CacheScnNumber value),
  }) {
    assert(insertUser != null);
    assert(updateUser != null);
    assert(updatePassword != null);
    assert(cacheScnNumber != null);
    return insertUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insertUser(InsertUser value),
    Result updateUser(UpdateUser value),
    Result updatePassword(UpdatePassword value),
    Result cacheScnNumber(CacheScnNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insertUser != null) {
      return insertUser(this);
    }
    return orElse();
  }
}

abstract class InsertUser implements UserEvent {
  const factory InsertUser() = _$InsertUser;
}

abstract class $UpdateUserCopyWith<$Res> {
  factory $UpdateUserCopyWith(
          UpdateUser value, $Res Function(UpdateUser) then) =
      _$UpdateUserCopyWithImpl<$Res>;
  $Res call({User user});
}

class _$UpdateUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdateUserCopyWith<$Res> {
  _$UpdateUserCopyWithImpl(UpdateUser _value, $Res Function(UpdateUser) _then)
      : super(_value, (v) => _then(v as UpdateUser));

  @override
  UpdateUser get _value => super._value as UpdateUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UpdateUser(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$UpdateUser implements UpdateUser {
  const _$UpdateUser(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UpdateUserCopyWith<UpdateUser> get copyWith =>
      _$UpdateUserCopyWithImpl<UpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insertUser(),
    @required Result updateUser(User user),
    @required Result updatePassword(String password),
    @required Result cacheScnNumber(String scnNumber),
  }) {
    assert(insertUser != null);
    assert(updateUser != null);
    assert(updatePassword != null);
    assert(cacheScnNumber != null);
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insertUser(),
    Result updateUser(User user),
    Result updatePassword(String password),
    Result cacheScnNumber(String scnNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insertUser(InsertUser value),
    @required Result updateUser(UpdateUser value),
    @required Result updatePassword(UpdatePassword value),
    @required Result cacheScnNumber(CacheScnNumber value),
  }) {
    assert(insertUser != null);
    assert(updateUser != null);
    assert(updatePassword != null);
    assert(cacheScnNumber != null);
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insertUser(InsertUser value),
    Result updateUser(UpdateUser value),
    Result updatePassword(UpdatePassword value),
    Result cacheScnNumber(CacheScnNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUser implements UserEvent {
  const factory UpdateUser(User user) = _$UpdateUser;

  User get user;
  $UpdateUserCopyWith<UpdateUser> get copyWith;
}

abstract class $UpdatePasswordCopyWith<$Res> {
  factory $UpdatePasswordCopyWith(
          UpdatePassword value, $Res Function(UpdatePassword) then) =
      _$UpdatePasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

class _$UpdatePasswordCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $UpdatePasswordCopyWith<$Res> {
  _$UpdatePasswordCopyWithImpl(
      UpdatePassword _value, $Res Function(UpdatePassword) _then)
      : super(_value, (v) => _then(v as UpdatePassword));

  @override
  UpdatePassword get _value => super._value as UpdatePassword;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(UpdatePassword(
      password == freezed ? _value.password : password as String,
    ));
  }
}

class _$UpdatePassword implements UpdatePassword {
  const _$UpdatePassword(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'UserEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdatePassword &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $UpdatePasswordCopyWith<UpdatePassword> get copyWith =>
      _$UpdatePasswordCopyWithImpl<UpdatePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insertUser(),
    @required Result updateUser(User user),
    @required Result updatePassword(String password),
    @required Result cacheScnNumber(String scnNumber),
  }) {
    assert(insertUser != null);
    assert(updateUser != null);
    assert(updatePassword != null);
    assert(cacheScnNumber != null);
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insertUser(),
    Result updateUser(User user),
    Result updatePassword(String password),
    Result cacheScnNumber(String scnNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePassword != null) {
      return updatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insertUser(InsertUser value),
    @required Result updateUser(UpdateUser value),
    @required Result updatePassword(UpdatePassword value),
    @required Result cacheScnNumber(CacheScnNumber value),
  }) {
    assert(insertUser != null);
    assert(updateUser != null);
    assert(updatePassword != null);
    assert(cacheScnNumber != null);
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insertUser(InsertUser value),
    Result updateUser(UpdateUser value),
    Result updatePassword(UpdatePassword value),
    Result cacheScnNumber(CacheScnNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class UpdatePassword implements UserEvent {
  const factory UpdatePassword(String password) = _$UpdatePassword;

  String get password;
  $UpdatePasswordCopyWith<UpdatePassword> get copyWith;
}

abstract class $CacheScnNumberCopyWith<$Res> {
  factory $CacheScnNumberCopyWith(
          CacheScnNumber value, $Res Function(CacheScnNumber) then) =
      _$CacheScnNumberCopyWithImpl<$Res>;
  $Res call({String scnNumber});
}

class _$CacheScnNumberCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements $CacheScnNumberCopyWith<$Res> {
  _$CacheScnNumberCopyWithImpl(
      CacheScnNumber _value, $Res Function(CacheScnNumber) _then)
      : super(_value, (v) => _then(v as CacheScnNumber));

  @override
  CacheScnNumber get _value => super._value as CacheScnNumber;

  @override
  $Res call({
    Object scnNumber = freezed,
  }) {
    return _then(CacheScnNumber(
      scnNumber == freezed ? _value.scnNumber : scnNumber as String,
    ));
  }
}

class _$CacheScnNumber implements CacheScnNumber {
  const _$CacheScnNumber(this.scnNumber) : assert(scnNumber != null);

  @override
  final String scnNumber;

  @override
  String toString() {
    return 'UserEvent.cacheScnNumber(scnNumber: $scnNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CacheScnNumber &&
            (identical(other.scnNumber, scnNumber) ||
                const DeepCollectionEquality()
                    .equals(other.scnNumber, scnNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(scnNumber);

  @override
  $CacheScnNumberCopyWith<CacheScnNumber> get copyWith =>
      _$CacheScnNumberCopyWithImpl<CacheScnNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result insertUser(),
    @required Result updateUser(User user),
    @required Result updatePassword(String password),
    @required Result cacheScnNumber(String scnNumber),
  }) {
    assert(insertUser != null);
    assert(updateUser != null);
    assert(updatePassword != null);
    assert(cacheScnNumber != null);
    return cacheScnNumber(scnNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result insertUser(),
    Result updateUser(User user),
    Result updatePassword(String password),
    Result cacheScnNumber(String scnNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheScnNumber != null) {
      return cacheScnNumber(scnNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result insertUser(InsertUser value),
    @required Result updateUser(UpdateUser value),
    @required Result updatePassword(UpdatePassword value),
    @required Result cacheScnNumber(CacheScnNumber value),
  }) {
    assert(insertUser != null);
    assert(updateUser != null);
    assert(updatePassword != null);
    assert(cacheScnNumber != null);
    return cacheScnNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result insertUser(InsertUser value),
    Result updateUser(UpdateUser value),
    Result updatePassword(UpdatePassword value),
    Result cacheScnNumber(CacheScnNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheScnNumber != null) {
      return cacheScnNumber(this);
    }
    return orElse();
  }
}

abstract class CacheScnNumber implements UserEvent {
  const factory CacheScnNumber(String scnNumber) = _$CacheScnNumber;

  String get scnNumber;
  $CacheScnNumberCopyWith<CacheScnNumber> get copyWith;
}

class _$UserStateTearOff {
  const _$UserStateTearOff();

// ignore: unused_element
  UserInitial initial() {
    return const UserInitial();
  }

// ignore: unused_element
  UserLoaded userLoaded(User user) {
    return UserLoaded(
      user,
    );
  }

// ignore: unused_element
  UserError userError(Failure failure) {
    return UserError(
      failure,
    );
  }

// ignore: unused_element
  UserUpdated userUpdated(String msg) {
    return UserUpdated(
      msg,
    );
  }

// ignore: unused_element
  UserUpdating userUpdating() {
    return const UserUpdating();
  }
}

// ignore: unused_element
const $UserState = _$UserStateTearOff();

mixin _$UserState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result userLoaded(User user),
    @required Result userError(Failure failure),
    @required Result userUpdated(String msg),
    @required Result userUpdating(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result userLoaded(User user),
    Result userError(Failure failure),
    Result userUpdated(String msg),
    Result userUpdating(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserInitial value),
    @required Result userLoaded(UserLoaded value),
    @required Result userError(UserError value),
    @required Result userUpdated(UserUpdated value),
    @required Result userUpdating(UserUpdating value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserInitial value),
    Result userLoaded(UserLoaded value),
    Result userError(UserError value),
    Result userUpdated(UserUpdated value),
    Result userUpdating(UserUpdating value),
    @required Result orElse(),
  });
}

abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

abstract class $UserInitialCopyWith<$Res> {
  factory $UserInitialCopyWith(
          UserInitial value, $Res Function(UserInitial) then) =
      _$UserInitialCopyWithImpl<$Res>;
}

class _$UserInitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserInitialCopyWith<$Res> {
  _$UserInitialCopyWithImpl(
      UserInitial _value, $Res Function(UserInitial) _then)
      : super(_value, (v) => _then(v as UserInitial));

  @override
  UserInitial get _value => super._value as UserInitial;
}

class _$UserInitial implements UserInitial {
  const _$UserInitial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result userLoaded(User user),
    @required Result userError(Failure failure),
    @required Result userUpdated(String msg),
    @required Result userUpdating(),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result userLoaded(User user),
    Result userError(Failure failure),
    Result userUpdated(String msg),
    Result userUpdating(),
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
    @required Result initial(UserInitial value),
    @required Result userLoaded(UserLoaded value),
    @required Result userError(UserError value),
    @required Result userUpdated(UserUpdated value),
    @required Result userUpdating(UserUpdating value),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserInitial value),
    Result userLoaded(UserLoaded value),
    Result userError(UserError value),
    Result userUpdated(UserUpdated value),
    Result userUpdating(UserUpdating value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserInitial implements UserState {
  const factory UserInitial() = _$UserInitial;
}

abstract class $UserLoadedCopyWith<$Res> {
  factory $UserLoadedCopyWith(
          UserLoaded value, $Res Function(UserLoaded) then) =
      _$UserLoadedCopyWithImpl<$Res>;
  $Res call({User user});
}

class _$UserLoadedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserLoadedCopyWith<$Res> {
  _$UserLoadedCopyWithImpl(UserLoaded _value, $Res Function(UserLoaded) _then)
      : super(_value, (v) => _then(v as UserLoaded));

  @override
  UserLoaded get _value => super._value as UserLoaded;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserLoaded(
      user == freezed ? _value.user : user as User,
    ));
  }
}

class _$UserLoaded implements UserLoaded {
  const _$UserLoaded(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserState.userLoaded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserLoaded &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UserLoadedCopyWith<UserLoaded> get copyWith =>
      _$UserLoadedCopyWithImpl<UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result userLoaded(User user),
    @required Result userError(Failure failure),
    @required Result userUpdated(String msg),
    @required Result userUpdating(),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result userLoaded(User user),
    Result userError(Failure failure),
    Result userUpdated(String msg),
    Result userUpdating(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserInitial value),
    @required Result userLoaded(UserLoaded value),
    @required Result userError(UserError value),
    @required Result userUpdated(UserUpdated value),
    @required Result userUpdating(UserUpdating value),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserInitial value),
    Result userLoaded(UserLoaded value),
    Result userError(UserError value),
    Result userUpdated(UserUpdated value),
    Result userUpdating(UserUpdating value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements UserState {
  const factory UserLoaded(User user) = _$UserLoaded;

  User get user;
  $UserLoadedCopyWith<UserLoaded> get copyWith;
}

abstract class $UserErrorCopyWith<$Res> {
  factory $UserErrorCopyWith(UserError value, $Res Function(UserError) then) =
      _$UserErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

class _$UserErrorCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserErrorCopyWith<$Res> {
  _$UserErrorCopyWithImpl(UserError _value, $Res Function(UserError) _then)
      : super(_value, (v) => _then(v as UserError));

  @override
  UserError get _value => super._value as UserError;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(UserError(
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

class _$UserError implements UserError {
  const _$UserError(this.failure) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'UserState.userError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserError &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $UserErrorCopyWith<UserError> get copyWith =>
      _$UserErrorCopyWithImpl<UserError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result userLoaded(User user),
    @required Result userError(Failure failure),
    @required Result userUpdated(String msg),
    @required Result userUpdating(),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return userError(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result userLoaded(User user),
    Result userError(Failure failure),
    Result userUpdated(String msg),
    Result userUpdating(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userError != null) {
      return userError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserInitial value),
    @required Result userLoaded(UserLoaded value),
    @required Result userError(UserError value),
    @required Result userUpdated(UserUpdated value),
    @required Result userUpdating(UserUpdating value),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return userError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserInitial value),
    Result userLoaded(UserLoaded value),
    Result userError(UserError value),
    Result userUpdated(UserUpdated value),
    Result userUpdating(UserUpdating value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userError != null) {
      return userError(this);
    }
    return orElse();
  }
}

abstract class UserError implements UserState {
  const factory UserError(Failure failure) = _$UserError;

  Failure get failure;
  $UserErrorCopyWith<UserError> get copyWith;
}

abstract class $UserUpdatedCopyWith<$Res> {
  factory $UserUpdatedCopyWith(
          UserUpdated value, $Res Function(UserUpdated) then) =
      _$UserUpdatedCopyWithImpl<$Res>;
  $Res call({String msg});
}

class _$UserUpdatedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserUpdatedCopyWith<$Res> {
  _$UserUpdatedCopyWithImpl(
      UserUpdated _value, $Res Function(UserUpdated) _then)
      : super(_value, (v) => _then(v as UserUpdated));

  @override
  UserUpdated get _value => super._value as UserUpdated;

  @override
  $Res call({
    Object msg = freezed,
  }) {
    return _then(UserUpdated(
      msg == freezed ? _value.msg : msg as String,
    ));
  }
}

class _$UserUpdated implements UserUpdated {
  const _$UserUpdated(this.msg) : assert(msg != null);

  @override
  final String msg;

  @override
  String toString() {
    return 'UserState.userUpdated(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserUpdated &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @override
  $UserUpdatedCopyWith<UserUpdated> get copyWith =>
      _$UserUpdatedCopyWithImpl<UserUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result userLoaded(User user),
    @required Result userError(Failure failure),
    @required Result userUpdated(String msg),
    @required Result userUpdating(),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return userUpdated(msg);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result userLoaded(User user),
    Result userError(Failure failure),
    Result userUpdated(String msg),
    Result userUpdating(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userUpdated != null) {
      return userUpdated(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserInitial value),
    @required Result userLoaded(UserLoaded value),
    @required Result userError(UserError value),
    @required Result userUpdated(UserUpdated value),
    @required Result userUpdating(UserUpdating value),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserInitial value),
    Result userLoaded(UserLoaded value),
    Result userError(UserError value),
    Result userUpdated(UserUpdated value),
    Result userUpdating(UserUpdating value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class UserUpdated implements UserState {
  const factory UserUpdated(String msg) = _$UserUpdated;

  String get msg;
  $UserUpdatedCopyWith<UserUpdated> get copyWith;
}

abstract class $UserUpdatingCopyWith<$Res> {
  factory $UserUpdatingCopyWith(
          UserUpdating value, $Res Function(UserUpdating) then) =
      _$UserUpdatingCopyWithImpl<$Res>;
}

class _$UserUpdatingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $UserUpdatingCopyWith<$Res> {
  _$UserUpdatingCopyWithImpl(
      UserUpdating _value, $Res Function(UserUpdating) _then)
      : super(_value, (v) => _then(v as UserUpdating));

  @override
  UserUpdating get _value => super._value as UserUpdating;
}

class _$UserUpdating implements UserUpdating {
  const _$UserUpdating();

  @override
  String toString() {
    return 'UserState.userUpdating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserUpdating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result userLoaded(User user),
    @required Result userError(Failure failure),
    @required Result userUpdated(String msg),
    @required Result userUpdating(),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return userUpdating();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result userLoaded(User user),
    Result userError(Failure failure),
    Result userUpdated(String msg),
    Result userUpdating(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userUpdating != null) {
      return userUpdating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UserInitial value),
    @required Result userLoaded(UserLoaded value),
    @required Result userError(UserError value),
    @required Result userUpdated(UserUpdated value),
    @required Result userUpdating(UserUpdating value),
  }) {
    assert(initial != null);
    assert(userLoaded != null);
    assert(userError != null);
    assert(userUpdated != null);
    assert(userUpdating != null);
    return userUpdating(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UserInitial value),
    Result userLoaded(UserLoaded value),
    Result userError(UserError value),
    Result userUpdated(UserUpdated value),
    Result userUpdating(UserUpdating value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userUpdating != null) {
      return userUpdating(this);
    }
    return orElse();
  }
}

abstract class UserUpdating implements UserState {
  const factory UserUpdating() = _$UserUpdating;
}
