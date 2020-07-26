// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

// ignore: unused_element
  UserExist userExist(String message) {
    return UserExist(
      message,
    );
  }

// ignore: unused_element
  NoCredentials noCredentials(String message) {
    return NoCredentials(
      message,
    );
  }

// ignore: unused_element
  NotAuthorized notAuthorized(String message) {
    return NotAuthorized(
      message,
    );
  }

// ignore: unused_element
  ServerFailure serverFailure(String message) {
    return ServerFailure(
      message,
    );
  }

// ignore: unused_element
  CacheFailure cacheFailure(String message) {
    return CacheFailure(
      message,
    );
  }
}

// ignore: unused_element
const $Failure = _$FailureTearOff();

mixin _$Failure {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userExist(String message),
    @required Result noCredentials(String message),
    @required Result notAuthorized(String message),
    @required Result serverFailure(String message),
    @required Result cacheFailure(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userExist(String message),
    Result noCredentials(String message),
    Result notAuthorized(String message),
    Result serverFailure(String message),
    Result cacheFailure(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userExist(UserExist value),
    @required Result noCredentials(NoCredentials value),
    @required Result notAuthorized(NotAuthorized value),
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userExist(UserExist value),
    Result noCredentials(NoCredentials value),
    Result notAuthorized(NotAuthorized value),
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  });

  $FailureCopyWith<Failure> get copyWith;
}

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class $UserExistCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $UserExistCopyWith(UserExist value, $Res Function(UserExist) then) =
      _$UserExistCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class _$UserExistCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $UserExistCopyWith<$Res> {
  _$UserExistCopyWithImpl(UserExist _value, $Res Function(UserExist) _then)
      : super(_value, (v) => _then(v as UserExist));

  @override
  UserExist get _value => super._value as UserExist;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UserExist(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$UserExist implements UserExist {
  const _$UserExist(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.userExist(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserExist &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UserExistCopyWith<UserExist> get copyWith =>
      _$UserExistCopyWithImpl<UserExist>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userExist(String message),
    @required Result noCredentials(String message),
    @required Result notAuthorized(String message),
    @required Result serverFailure(String message),
    @required Result cacheFailure(String message),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return userExist(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userExist(String message),
    Result noCredentials(String message),
    Result notAuthorized(String message),
    Result serverFailure(String message),
    Result cacheFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userExist != null) {
      return userExist(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userExist(UserExist value),
    @required Result noCredentials(NoCredentials value),
    @required Result notAuthorized(NotAuthorized value),
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return userExist(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userExist(UserExist value),
    Result noCredentials(NoCredentials value),
    Result notAuthorized(NotAuthorized value),
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userExist != null) {
      return userExist(this);
    }
    return orElse();
  }
}

abstract class UserExist implements Failure {
  const factory UserExist(String message) = _$UserExist;

  @override
  String get message;
  @override
  $UserExistCopyWith<UserExist> get copyWith;
}

abstract class $NoCredentialsCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NoCredentialsCopyWith(
          NoCredentials value, $Res Function(NoCredentials) then) =
      _$NoCredentialsCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class _$NoCredentialsCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $NoCredentialsCopyWith<$Res> {
  _$NoCredentialsCopyWithImpl(
      NoCredentials _value, $Res Function(NoCredentials) _then)
      : super(_value, (v) => _then(v as NoCredentials));

  @override
  NoCredentials get _value => super._value as NoCredentials;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(NoCredentials(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$NoCredentials implements NoCredentials {
  const _$NoCredentials(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.noCredentials(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NoCredentials &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $NoCredentialsCopyWith<NoCredentials> get copyWith =>
      _$NoCredentialsCopyWithImpl<NoCredentials>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userExist(String message),
    @required Result noCredentials(String message),
    @required Result notAuthorized(String message),
    @required Result serverFailure(String message),
    @required Result cacheFailure(String message),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return noCredentials(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userExist(String message),
    Result noCredentials(String message),
    Result notAuthorized(String message),
    Result serverFailure(String message),
    Result cacheFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCredentials != null) {
      return noCredentials(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userExist(UserExist value),
    @required Result noCredentials(NoCredentials value),
    @required Result notAuthorized(NotAuthorized value),
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return noCredentials(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userExist(UserExist value),
    Result noCredentials(NoCredentials value),
    Result notAuthorized(NotAuthorized value),
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noCredentials != null) {
      return noCredentials(this);
    }
    return orElse();
  }
}

abstract class NoCredentials implements Failure {
  const factory NoCredentials(String message) = _$NoCredentials;

  @override
  String get message;
  @override
  $NoCredentialsCopyWith<NoCredentials> get copyWith;
}

abstract class $NotAuthorizedCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $NotAuthorizedCopyWith(
          NotAuthorized value, $Res Function(NotAuthorized) then) =
      _$NotAuthorizedCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class _$NotAuthorizedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $NotAuthorizedCopyWith<$Res> {
  _$NotAuthorizedCopyWithImpl(
      NotAuthorized _value, $Res Function(NotAuthorized) _then)
      : super(_value, (v) => _then(v as NotAuthorized));

  @override
  NotAuthorized get _value => super._value as NotAuthorized;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(NotAuthorized(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$NotAuthorized implements NotAuthorized {
  const _$NotAuthorized(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.notAuthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotAuthorized &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $NotAuthorizedCopyWith<NotAuthorized> get copyWith =>
      _$NotAuthorizedCopyWithImpl<NotAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userExist(String message),
    @required Result noCredentials(String message),
    @required Result notAuthorized(String message),
    @required Result serverFailure(String message),
    @required Result cacheFailure(String message),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return notAuthorized(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userExist(String message),
    Result noCredentials(String message),
    Result notAuthorized(String message),
    Result serverFailure(String message),
    Result cacheFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthorized != null) {
      return notAuthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userExist(UserExist value),
    @required Result noCredentials(NoCredentials value),
    @required Result notAuthorized(NotAuthorized value),
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userExist(UserExist value),
    Result noCredentials(NoCredentials value),
    Result notAuthorized(NotAuthorized value),
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class NotAuthorized implements Failure {
  const factory NotAuthorized(String message) = _$NotAuthorized;

  @override
  String get message;
  @override
  $NotAuthorizedCopyWith<NotAuthorized> get copyWith;
}

abstract class $ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class _$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(
      ServerFailure _value, $Res Function(ServerFailure) _then)
      : super(_value, (v) => _then(v as ServerFailure));

  @override
  ServerFailure get _value => super._value as ServerFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ServerFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$ServerFailure implements ServerFailure {
  const _$ServerFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userExist(String message),
    @required Result noCredentials(String message),
    @required Result notAuthorized(String message),
    @required Result serverFailure(String message),
    @required Result cacheFailure(String message),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return serverFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userExist(String message),
    Result noCredentials(String message),
    Result notAuthorized(String message),
    Result serverFailure(String message),
    Result cacheFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userExist(UserExist value),
    @required Result noCredentials(NoCredentials value),
    @required Result notAuthorized(NotAuthorized value),
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userExist(UserExist value),
    Result noCredentials(NoCredentials value),
    Result notAuthorized(NotAuthorized value),
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure(String message) = _$ServerFailure;

  @override
  String get message;
  @override
  $ServerFailureCopyWith<ServerFailure> get copyWith;
}

abstract class $CacheFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory $CacheFailureCopyWith(
          CacheFailure value, $Res Function(CacheFailure) then) =
      _$CacheFailureCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class _$CacheFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $CacheFailureCopyWith<$Res> {
  _$CacheFailureCopyWithImpl(
      CacheFailure _value, $Res Function(CacheFailure) _then)
      : super(_value, (v) => _then(v as CacheFailure));

  @override
  CacheFailure get _value => super._value as CacheFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(CacheFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$CacheFailure implements CacheFailure {
  const _$CacheFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.cacheFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CacheFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $CacheFailureCopyWith<CacheFailure> get copyWith =>
      _$CacheFailureCopyWithImpl<CacheFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result userExist(String message),
    @required Result noCredentials(String message),
    @required Result notAuthorized(String message),
    @required Result serverFailure(String message),
    @required Result cacheFailure(String message),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return cacheFailure(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result userExist(String message),
    Result noCredentials(String message),
    Result notAuthorized(String message),
    Result serverFailure(String message),
    Result cacheFailure(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result userExist(UserExist value),
    @required Result noCredentials(NoCredentials value),
    @required Result notAuthorized(NotAuthorized value),
    @required Result serverFailure(ServerFailure value),
    @required Result cacheFailure(CacheFailure value),
  }) {
    assert(userExist != null);
    assert(noCredentials != null);
    assert(notAuthorized != null);
    assert(serverFailure != null);
    assert(cacheFailure != null);
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result userExist(UserExist value),
    Result noCredentials(NoCredentials value),
    Result notAuthorized(NotAuthorized value),
    Result serverFailure(ServerFailure value),
    Result cacheFailure(CacheFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure implements Failure {
  const factory CacheFailure(String message) = _$CacheFailure;

  @override
  String get message;
  @override
  $CacheFailureCopyWith<CacheFailure> get copyWith;
}
