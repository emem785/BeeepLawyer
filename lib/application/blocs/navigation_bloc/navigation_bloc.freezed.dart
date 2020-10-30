// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NavigationEventTearOff {
  const _$NavigationEventTearOff();

// ignore: unused_element
  ChangeNavState changeNavState(int i) {
    return ChangeNavState(
      i,
    );
  }
}

// ignore: unused_element
const $NavigationEvent = _$NavigationEventTearOff();

mixin _$NavigationEvent {
  int get i;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeNavState(int i),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeNavState(int i),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeNavState(ChangeNavState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeNavState(ChangeNavState value),
    @required Result orElse(),
  });

  $NavigationEventCopyWith<NavigationEvent> get copyWith;
}

abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
  $Res call({int i});
}

class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;

  @override
  $Res call({
    Object i = freezed,
  }) {
    return _then(_value.copyWith(
      i: i == freezed ? _value.i : i as int,
    ));
  }
}

abstract class $ChangeNavStateCopyWith<$Res>
    implements $NavigationEventCopyWith<$Res> {
  factory $ChangeNavStateCopyWith(
          ChangeNavState value, $Res Function(ChangeNavState) then) =
      _$ChangeNavStateCopyWithImpl<$Res>;
  @override
  $Res call({int i});
}

class _$ChangeNavStateCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $ChangeNavStateCopyWith<$Res> {
  _$ChangeNavStateCopyWithImpl(
      ChangeNavState _value, $Res Function(ChangeNavState) _then)
      : super(_value, (v) => _then(v as ChangeNavState));

  @override
  ChangeNavState get _value => super._value as ChangeNavState;

  @override
  $Res call({
    Object i = freezed,
  }) {
    return _then(ChangeNavState(
      i == freezed ? _value.i : i as int,
    ));
  }
}

class _$ChangeNavState with DiagnosticableTreeMixin implements ChangeNavState {
  const _$ChangeNavState(this.i) : assert(i != null);

  @override
  final int i;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationEvent.changeNavState(i: $i)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NavigationEvent.changeNavState'))
      ..add(DiagnosticsProperty('i', i));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeNavState &&
            (identical(other.i, i) ||
                const DeepCollectionEquality().equals(other.i, i)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(i);

  @override
  $ChangeNavStateCopyWith<ChangeNavState> get copyWith =>
      _$ChangeNavStateCopyWithImpl<ChangeNavState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result changeNavState(int i),
  }) {
    assert(changeNavState != null);
    return changeNavState(i);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result changeNavState(int i),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeNavState != null) {
      return changeNavState(i);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result changeNavState(ChangeNavState value),
  }) {
    assert(changeNavState != null);
    return changeNavState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result changeNavState(ChangeNavState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeNavState != null) {
      return changeNavState(this);
    }
    return orElse();
  }
}

abstract class ChangeNavState implements NavigationEvent {
  const factory ChangeNavState(int i) = _$ChangeNavState;

  @override
  int get i;
  @override
  $ChangeNavStateCopyWith<ChangeNavState> get copyWith;
}

class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

// ignore: unused_element
  MapHome mapHome() {
    return const MapHome();
  }

// ignore: unused_element
  Menu menu() {
    return const Menu();
  }
}

// ignore: unused_element
const $NavigationState = _$NavigationStateTearOff();

mixin _$NavigationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mapHome(),
    @required Result menu(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mapHome(),
    Result menu(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mapHome(MapHome value),
    @required Result menu(Menu value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mapHome(MapHome value),
    Result menu(Menu value),
    @required Result orElse(),
  });
}

abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
}

class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;
}

abstract class $MapHomeCopyWith<$Res> {
  factory $MapHomeCopyWith(MapHome value, $Res Function(MapHome) then) =
      _$MapHomeCopyWithImpl<$Res>;
}

class _$MapHomeCopyWithImpl<$Res> extends _$NavigationStateCopyWithImpl<$Res>
    implements $MapHomeCopyWith<$Res> {
  _$MapHomeCopyWithImpl(MapHome _value, $Res Function(MapHome) _then)
      : super(_value, (v) => _then(v as MapHome));

  @override
  MapHome get _value => super._value as MapHome;
}

class _$MapHome with DiagnosticableTreeMixin implements MapHome {
  const _$MapHome();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationState.mapHome()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NavigationState.mapHome'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MapHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mapHome(),
    @required Result menu(),
  }) {
    assert(mapHome != null);
    assert(menu != null);
    return mapHome();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mapHome(),
    Result menu(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mapHome != null) {
      return mapHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mapHome(MapHome value),
    @required Result menu(Menu value),
  }) {
    assert(mapHome != null);
    assert(menu != null);
    return mapHome(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mapHome(MapHome value),
    Result menu(Menu value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mapHome != null) {
      return mapHome(this);
    }
    return orElse();
  }
}

abstract class MapHome implements NavigationState {
  const factory MapHome() = _$MapHome;
}

abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res>;
}

class _$MenuCopyWithImpl<$Res> extends _$NavigationStateCopyWithImpl<$Res>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(Menu _value, $Res Function(Menu) _then)
      : super(_value, (v) => _then(v as Menu));

  @override
  Menu get _value => super._value as Menu;
}

class _$Menu with DiagnosticableTreeMixin implements Menu {
  const _$Menu();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavigationState.menu()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NavigationState.menu'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Menu);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result mapHome(),
    @required Result menu(),
  }) {
    assert(mapHome != null);
    assert(menu != null);
    return menu();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result mapHome(),
    Result menu(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (menu != null) {
      return menu();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result mapHome(MapHome value),
    @required Result menu(Menu value),
  }) {
    assert(mapHome != null);
    assert(menu != null);
    return menu(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result mapHome(MapHome value),
    Result menu(Menu value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (menu != null) {
      return menu(this);
    }
    return orElse();
  }
}

abstract class Menu implements NavigationState {
  const factory Menu() = _$Menu;
}
