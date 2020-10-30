// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'unilink_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UnilinkStateTearOff {
  const _$UnilinkStateTearOff();

// ignore: unused_element
  UnilinkInitial initial() {
    return const UnilinkInitial();
  }

// ignore: unused_element
  UnilinkDisposed disposed() {
    return const UnilinkDisposed();
  }
}

// ignore: unused_element
const $UnilinkState = _$UnilinkStateTearOff();

mixin _$UnilinkState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result disposed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result disposed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UnilinkInitial value),
    @required Result disposed(UnilinkDisposed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UnilinkInitial value),
    Result disposed(UnilinkDisposed value),
    @required Result orElse(),
  });
}

abstract class $UnilinkStateCopyWith<$Res> {
  factory $UnilinkStateCopyWith(
          UnilinkState value, $Res Function(UnilinkState) then) =
      _$UnilinkStateCopyWithImpl<$Res>;
}

class _$UnilinkStateCopyWithImpl<$Res> implements $UnilinkStateCopyWith<$Res> {
  _$UnilinkStateCopyWithImpl(this._value, this._then);

  final UnilinkState _value;
  // ignore: unused_field
  final $Res Function(UnilinkState) _then;
}

abstract class $UnilinkInitialCopyWith<$Res> {
  factory $UnilinkInitialCopyWith(
          UnilinkInitial value, $Res Function(UnilinkInitial) then) =
      _$UnilinkInitialCopyWithImpl<$Res>;
}

class _$UnilinkInitialCopyWithImpl<$Res>
    extends _$UnilinkStateCopyWithImpl<$Res>
    implements $UnilinkInitialCopyWith<$Res> {
  _$UnilinkInitialCopyWithImpl(
      UnilinkInitial _value, $Res Function(UnilinkInitial) _then)
      : super(_value, (v) => _then(v as UnilinkInitial));

  @override
  UnilinkInitial get _value => super._value as UnilinkInitial;
}

class _$UnilinkInitial implements UnilinkInitial {
  const _$UnilinkInitial();

  @override
  String toString() {
    return 'UnilinkState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnilinkInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result disposed(),
  }) {
    assert(initial != null);
    assert(disposed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result disposed(),
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
    @required Result initial(UnilinkInitial value),
    @required Result disposed(UnilinkDisposed value),
  }) {
    assert(initial != null);
    assert(disposed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UnilinkInitial value),
    Result disposed(UnilinkDisposed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UnilinkInitial implements UnilinkState {
  const factory UnilinkInitial() = _$UnilinkInitial;
}

abstract class $UnilinkDisposedCopyWith<$Res> {
  factory $UnilinkDisposedCopyWith(
          UnilinkDisposed value, $Res Function(UnilinkDisposed) then) =
      _$UnilinkDisposedCopyWithImpl<$Res>;
}

class _$UnilinkDisposedCopyWithImpl<$Res>
    extends _$UnilinkStateCopyWithImpl<$Res>
    implements $UnilinkDisposedCopyWith<$Res> {
  _$UnilinkDisposedCopyWithImpl(
      UnilinkDisposed _value, $Res Function(UnilinkDisposed) _then)
      : super(_value, (v) => _then(v as UnilinkDisposed));

  @override
  UnilinkDisposed get _value => super._value as UnilinkDisposed;
}

class _$UnilinkDisposed implements UnilinkDisposed {
  const _$UnilinkDisposed();

  @override
  String toString() {
    return 'UnilinkState.disposed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnilinkDisposed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result disposed(),
  }) {
    assert(initial != null);
    assert(disposed != null);
    return disposed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result disposed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disposed != null) {
      return disposed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(UnilinkInitial value),
    @required Result disposed(UnilinkDisposed value),
  }) {
    assert(initial != null);
    assert(disposed != null);
    return disposed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(UnilinkInitial value),
    Result disposed(UnilinkDisposed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (disposed != null) {
      return disposed(this);
    }
    return orElse();
  }
}

abstract class UnilinkDisposed implements UnilinkState {
  const factory UnilinkDisposed() = _$UnilinkDisposed;
}
