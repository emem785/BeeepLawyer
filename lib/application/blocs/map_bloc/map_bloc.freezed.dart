// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MapEventTearOff {
  const _$MapEventTearOff();

// ignore: unused_element
  RenderBuddyMap renderClientMap(Buddy buddy) {
    return RenderBuddyMap(
      buddy,
    );
  }

// ignore: unused_element
  StartBroadcast startBroadcast(MapTool mapTool, Buddy buddy) {
    return StartBroadcast(
      mapTool,
      buddy,
    );
  }

// ignore: unused_element
  StopSecondBroadcast stopSecondBroadcast() {
    return const StopSecondBroadcast();
  }
}

// ignore: unused_element
const $MapEvent = _$MapEventTearOff();

mixin _$MapEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderClientMap(Buddy buddy),
    @required Result startBroadcast(MapTool mapTool, Buddy buddy),
    @required Result stopSecondBroadcast(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderClientMap(Buddy buddy),
    Result startBroadcast(MapTool mapTool, Buddy buddy),
    Result stopSecondBroadcast(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderClientMap(RenderBuddyMap value),
    @required Result startBroadcast(StartBroadcast value),
    @required Result stopSecondBroadcast(StopSecondBroadcast value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderClientMap(RenderBuddyMap value),
    Result startBroadcast(StartBroadcast value),
    Result stopSecondBroadcast(StopSecondBroadcast value),
    @required Result orElse(),
  });
}

abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res>;
}

class _$MapEventCopyWithImpl<$Res> implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  final MapEvent _value;
  // ignore: unused_field
  final $Res Function(MapEvent) _then;
}

abstract class $RenderBuddyMapCopyWith<$Res> {
  factory $RenderBuddyMapCopyWith(
          RenderBuddyMap value, $Res Function(RenderBuddyMap) then) =
      _$RenderBuddyMapCopyWithImpl<$Res>;
  $Res call({Buddy buddy});
}

class _$RenderBuddyMapCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $RenderBuddyMapCopyWith<$Res> {
  _$RenderBuddyMapCopyWithImpl(
      RenderBuddyMap _value, $Res Function(RenderBuddyMap) _then)
      : super(_value, (v) => _then(v as RenderBuddyMap));

  @override
  RenderBuddyMap get _value => super._value as RenderBuddyMap;

  @override
  $Res call({
    Object buddy = freezed,
  }) {
    return _then(RenderBuddyMap(
      buddy == freezed ? _value.buddy : buddy as Buddy,
    ));
  }
}

class _$RenderBuddyMap implements RenderBuddyMap {
  const _$RenderBuddyMap(this.buddy) : assert(buddy != null);

  @override
  final Buddy buddy;

  @override
  String toString() {
    return 'MapEvent.renderClientMap(buddy: $buddy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderBuddyMap &&
            (identical(other.buddy, buddy) ||
                const DeepCollectionEquality().equals(other.buddy, buddy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(buddy);

  @override
  $RenderBuddyMapCopyWith<RenderBuddyMap> get copyWith =>
      _$RenderBuddyMapCopyWithImpl<RenderBuddyMap>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderClientMap(Buddy buddy),
    @required Result startBroadcast(MapTool mapTool, Buddy buddy),
    @required Result stopSecondBroadcast(),
  }) {
    assert(renderClientMap != null);
    assert(startBroadcast != null);
    assert(stopSecondBroadcast != null);
    return renderClientMap(buddy);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderClientMap(Buddy buddy),
    Result startBroadcast(MapTool mapTool, Buddy buddy),
    Result stopSecondBroadcast(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderClientMap != null) {
      return renderClientMap(buddy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderClientMap(RenderBuddyMap value),
    @required Result startBroadcast(StartBroadcast value),
    @required Result stopSecondBroadcast(StopSecondBroadcast value),
  }) {
    assert(renderClientMap != null);
    assert(startBroadcast != null);
    assert(stopSecondBroadcast != null);
    return renderClientMap(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderClientMap(RenderBuddyMap value),
    Result startBroadcast(StartBroadcast value),
    Result stopSecondBroadcast(StopSecondBroadcast value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderClientMap != null) {
      return renderClientMap(this);
    }
    return orElse();
  }
}

abstract class RenderBuddyMap implements MapEvent {
  const factory RenderBuddyMap(Buddy buddy) = _$RenderBuddyMap;

  Buddy get buddy;
  $RenderBuddyMapCopyWith<RenderBuddyMap> get copyWith;
}

abstract class $StartBroadcastCopyWith<$Res> {
  factory $StartBroadcastCopyWith(
          StartBroadcast value, $Res Function(StartBroadcast) then) =
      _$StartBroadcastCopyWithImpl<$Res>;
  $Res call({MapTool mapTool, Buddy buddy});
}

class _$StartBroadcastCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements $StartBroadcastCopyWith<$Res> {
  _$StartBroadcastCopyWithImpl(
      StartBroadcast _value, $Res Function(StartBroadcast) _then)
      : super(_value, (v) => _then(v as StartBroadcast));

  @override
  StartBroadcast get _value => super._value as StartBroadcast;

  @override
  $Res call({
    Object mapTool = freezed,
    Object buddy = freezed,
  }) {
    return _then(StartBroadcast(
      mapTool == freezed ? _value.mapTool : mapTool as MapTool,
      buddy == freezed ? _value.buddy : buddy as Buddy,
    ));
  }
}

class _$StartBroadcast implements StartBroadcast {
  const _$StartBroadcast(this.mapTool, this.buddy)
      : assert(mapTool != null),
        assert(buddy != null);

  @override
  final MapTool mapTool;
  @override
  final Buddy buddy;

  @override
  String toString() {
    return 'MapEvent.startBroadcast(mapTool: $mapTool, buddy: $buddy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StartBroadcast &&
            (identical(other.mapTool, mapTool) ||
                const DeepCollectionEquality()
                    .equals(other.mapTool, mapTool)) &&
            (identical(other.buddy, buddy) ||
                const DeepCollectionEquality().equals(other.buddy, buddy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mapTool) ^
      const DeepCollectionEquality().hash(buddy);

  @override
  $StartBroadcastCopyWith<StartBroadcast> get copyWith =>
      _$StartBroadcastCopyWithImpl<StartBroadcast>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderClientMap(Buddy buddy),
    @required Result startBroadcast(MapTool mapTool, Buddy buddy),
    @required Result stopSecondBroadcast(),
  }) {
    assert(renderClientMap != null);
    assert(startBroadcast != null);
    assert(stopSecondBroadcast != null);
    return startBroadcast(mapTool, buddy);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderClientMap(Buddy buddy),
    Result startBroadcast(MapTool mapTool, Buddy buddy),
    Result stopSecondBroadcast(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startBroadcast != null) {
      return startBroadcast(mapTool, buddy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderClientMap(RenderBuddyMap value),
    @required Result startBroadcast(StartBroadcast value),
    @required Result stopSecondBroadcast(StopSecondBroadcast value),
  }) {
    assert(renderClientMap != null);
    assert(startBroadcast != null);
    assert(stopSecondBroadcast != null);
    return startBroadcast(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderClientMap(RenderBuddyMap value),
    Result startBroadcast(StartBroadcast value),
    Result stopSecondBroadcast(StopSecondBroadcast value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startBroadcast != null) {
      return startBroadcast(this);
    }
    return orElse();
  }
}

abstract class StartBroadcast implements MapEvent {
  const factory StartBroadcast(MapTool mapTool, Buddy buddy) = _$StartBroadcast;

  MapTool get mapTool;
  Buddy get buddy;
  $StartBroadcastCopyWith<StartBroadcast> get copyWith;
}

abstract class $StopSecondBroadcastCopyWith<$Res> {
  factory $StopSecondBroadcastCopyWith(
          StopSecondBroadcast value, $Res Function(StopSecondBroadcast) then) =
      _$StopSecondBroadcastCopyWithImpl<$Res>;
}

class _$StopSecondBroadcastCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements $StopSecondBroadcastCopyWith<$Res> {
  _$StopSecondBroadcastCopyWithImpl(
      StopSecondBroadcast _value, $Res Function(StopSecondBroadcast) _then)
      : super(_value, (v) => _then(v as StopSecondBroadcast));

  @override
  StopSecondBroadcast get _value => super._value as StopSecondBroadcast;
}

class _$StopSecondBroadcast implements StopSecondBroadcast {
  const _$StopSecondBroadcast();

  @override
  String toString() {
    return 'MapEvent.stopSecondBroadcast()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopSecondBroadcast);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderClientMap(Buddy buddy),
    @required Result startBroadcast(MapTool mapTool, Buddy buddy),
    @required Result stopSecondBroadcast(),
  }) {
    assert(renderClientMap != null);
    assert(startBroadcast != null);
    assert(stopSecondBroadcast != null);
    return stopSecondBroadcast();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderClientMap(Buddy buddy),
    Result startBroadcast(MapTool mapTool, Buddy buddy),
    Result stopSecondBroadcast(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopSecondBroadcast != null) {
      return stopSecondBroadcast();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderClientMap(RenderBuddyMap value),
    @required Result startBroadcast(StartBroadcast value),
    @required Result stopSecondBroadcast(StopSecondBroadcast value),
  }) {
    assert(renderClientMap != null);
    assert(startBroadcast != null);
    assert(stopSecondBroadcast != null);
    return stopSecondBroadcast(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderClientMap(RenderBuddyMap value),
    Result startBroadcast(StartBroadcast value),
    Result stopSecondBroadcast(StopSecondBroadcast value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopSecondBroadcast != null) {
      return stopSecondBroadcast(this);
    }
    return orElse();
  }
}

abstract class StopSecondBroadcast implements MapEvent {
  const factory StopSecondBroadcast() = _$StopSecondBroadcast;
}

class _$MapStateTearOff {
  const _$MapStateTearOff();

// ignore: unused_element
  MapInitial initial() {
    return const MapInitial();
  }

// ignore: unused_element
  MapRendered mapRendered(MapTool mapTool) {
    return MapRendered(
      mapTool,
    );
  }

// ignore: unused_element
  BroadcastStarted broadcastStarted(Buddy buddy, MapTool mapTool) {
    return BroadcastStarted(
      buddy,
      mapTool,
    );
  }

// ignore: unused_element
  BroadcastEnded broadcastEnded() {
    return const BroadcastEnded();
  }

// ignore: unused_element
  BroadcastError broadcastError() {
    return const BroadcastError();
  }

// ignore: unused_element
  MapLoading loading() {
    return const MapLoading();
  }
}

// ignore: unused_element
const $MapState = _$MapStateTearOff();

mixin _$MapState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(Buddy buddy, MapTool mapTool),
    @required Result broadcastEnded(),
    @required Result broadcastError(),
    @required Result loading(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(Buddy buddy, MapTool mapTool),
    Result broadcastEnded(),
    Result broadcastError(),
    Result loading(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MapInitial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastEnded(BroadcastEnded value),
    @required Result broadcastError(BroadcastError value),
    @required Result loading(MapLoading value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MapInitial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastEnded(BroadcastEnded value),
    Result broadcastError(BroadcastError value),
    Result loading(MapLoading value),
    @required Result orElse(),
  });
}

abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
}

class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;
}

abstract class $MapInitialCopyWith<$Res> {
  factory $MapInitialCopyWith(
          MapInitial value, $Res Function(MapInitial) then) =
      _$MapInitialCopyWithImpl<$Res>;
}

class _$MapInitialCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $MapInitialCopyWith<$Res> {
  _$MapInitialCopyWithImpl(MapInitial _value, $Res Function(MapInitial) _then)
      : super(_value, (v) => _then(v as MapInitial));

  @override
  MapInitial get _value => super._value as MapInitial;
}

class _$MapInitial implements MapInitial {
  const _$MapInitial();

  @override
  String toString() {
    return 'MapState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MapInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(Buddy buddy, MapTool mapTool),
    @required Result broadcastEnded(),
    @required Result broadcastError(),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(Buddy buddy, MapTool mapTool),
    Result broadcastEnded(),
    Result broadcastError(),
    Result loading(),
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
    @required Result initial(MapInitial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastEnded(BroadcastEnded value),
    @required Result broadcastError(BroadcastError value),
    @required Result loading(MapLoading value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MapInitial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastEnded(BroadcastEnded value),
    Result broadcastError(BroadcastError value),
    Result loading(MapLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MapInitial implements MapState {
  const factory MapInitial() = _$MapInitial;
}

abstract class $MapRenderedCopyWith<$Res> {
  factory $MapRenderedCopyWith(
          MapRendered value, $Res Function(MapRendered) then) =
      _$MapRenderedCopyWithImpl<$Res>;
  $Res call({MapTool mapTool});
}

class _$MapRenderedCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $MapRenderedCopyWith<$Res> {
  _$MapRenderedCopyWithImpl(
      MapRendered _value, $Res Function(MapRendered) _then)
      : super(_value, (v) => _then(v as MapRendered));

  @override
  MapRendered get _value => super._value as MapRendered;

  @override
  $Res call({
    Object mapTool = freezed,
  }) {
    return _then(MapRendered(
      mapTool == freezed ? _value.mapTool : mapTool as MapTool,
    ));
  }
}

class _$MapRendered implements MapRendered {
  const _$MapRendered(this.mapTool) : assert(mapTool != null);

  @override
  final MapTool mapTool;

  @override
  String toString() {
    return 'MapState.mapRendered(mapTool: $mapTool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MapRendered &&
            (identical(other.mapTool, mapTool) ||
                const DeepCollectionEquality().equals(other.mapTool, mapTool)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mapTool);

  @override
  $MapRenderedCopyWith<MapRendered> get copyWith =>
      _$MapRenderedCopyWithImpl<MapRendered>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(Buddy buddy, MapTool mapTool),
    @required Result broadcastEnded(),
    @required Result broadcastError(),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return mapRendered(mapTool);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(Buddy buddy, MapTool mapTool),
    Result broadcastEnded(),
    Result broadcastError(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mapRendered != null) {
      return mapRendered(mapTool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MapInitial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastEnded(BroadcastEnded value),
    @required Result broadcastError(BroadcastError value),
    @required Result loading(MapLoading value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return mapRendered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MapInitial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastEnded(BroadcastEnded value),
    Result broadcastError(BroadcastError value),
    Result loading(MapLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mapRendered != null) {
      return mapRendered(this);
    }
    return orElse();
  }
}

abstract class MapRendered implements MapState {
  const factory MapRendered(MapTool mapTool) = _$MapRendered;

  MapTool get mapTool;
  $MapRenderedCopyWith<MapRendered> get copyWith;
}

abstract class $BroadcastStartedCopyWith<$Res> {
  factory $BroadcastStartedCopyWith(
          BroadcastStarted value, $Res Function(BroadcastStarted) then) =
      _$BroadcastStartedCopyWithImpl<$Res>;
  $Res call({Buddy buddy, MapTool mapTool});
}

class _$BroadcastStartedCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $BroadcastStartedCopyWith<$Res> {
  _$BroadcastStartedCopyWithImpl(
      BroadcastStarted _value, $Res Function(BroadcastStarted) _then)
      : super(_value, (v) => _then(v as BroadcastStarted));

  @override
  BroadcastStarted get _value => super._value as BroadcastStarted;

  @override
  $Res call({
    Object buddy = freezed,
    Object mapTool = freezed,
  }) {
    return _then(BroadcastStarted(
      buddy == freezed ? _value.buddy : buddy as Buddy,
      mapTool == freezed ? _value.mapTool : mapTool as MapTool,
    ));
  }
}

class _$BroadcastStarted implements BroadcastStarted {
  const _$BroadcastStarted(this.buddy, this.mapTool)
      : assert(buddy != null),
        assert(mapTool != null);

  @override
  final Buddy buddy;
  @override
  final MapTool mapTool;

  @override
  String toString() {
    return 'MapState.broadcastStarted(buddy: $buddy, mapTool: $mapTool)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BroadcastStarted &&
            (identical(other.buddy, buddy) ||
                const DeepCollectionEquality().equals(other.buddy, buddy)) &&
            (identical(other.mapTool, mapTool) ||
                const DeepCollectionEquality().equals(other.mapTool, mapTool)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buddy) ^
      const DeepCollectionEquality().hash(mapTool);

  @override
  $BroadcastStartedCopyWith<BroadcastStarted> get copyWith =>
      _$BroadcastStartedCopyWithImpl<BroadcastStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(Buddy buddy, MapTool mapTool),
    @required Result broadcastEnded(),
    @required Result broadcastError(),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return broadcastStarted(buddy, mapTool);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(Buddy buddy, MapTool mapTool),
    Result broadcastEnded(),
    Result broadcastError(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastStarted != null) {
      return broadcastStarted(buddy, mapTool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MapInitial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastEnded(BroadcastEnded value),
    @required Result broadcastError(BroadcastError value),
    @required Result loading(MapLoading value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return broadcastStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MapInitial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastEnded(BroadcastEnded value),
    Result broadcastError(BroadcastError value),
    Result loading(MapLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastStarted != null) {
      return broadcastStarted(this);
    }
    return orElse();
  }
}

abstract class BroadcastStarted implements MapState {
  const factory BroadcastStarted(Buddy buddy, MapTool mapTool) =
      _$BroadcastStarted;

  Buddy get buddy;
  MapTool get mapTool;
  $BroadcastStartedCopyWith<BroadcastStarted> get copyWith;
}

abstract class $BroadcastEndedCopyWith<$Res> {
  factory $BroadcastEndedCopyWith(
          BroadcastEnded value, $Res Function(BroadcastEnded) then) =
      _$BroadcastEndedCopyWithImpl<$Res>;
}

class _$BroadcastEndedCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $BroadcastEndedCopyWith<$Res> {
  _$BroadcastEndedCopyWithImpl(
      BroadcastEnded _value, $Res Function(BroadcastEnded) _then)
      : super(_value, (v) => _then(v as BroadcastEnded));

  @override
  BroadcastEnded get _value => super._value as BroadcastEnded;
}

class _$BroadcastEnded implements BroadcastEnded {
  const _$BroadcastEnded();

  @override
  String toString() {
    return 'MapState.broadcastEnded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BroadcastEnded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(Buddy buddy, MapTool mapTool),
    @required Result broadcastEnded(),
    @required Result broadcastError(),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return broadcastEnded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(Buddy buddy, MapTool mapTool),
    Result broadcastEnded(),
    Result broadcastError(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastEnded != null) {
      return broadcastEnded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MapInitial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastEnded(BroadcastEnded value),
    @required Result broadcastError(BroadcastError value),
    @required Result loading(MapLoading value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return broadcastEnded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MapInitial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastEnded(BroadcastEnded value),
    Result broadcastError(BroadcastError value),
    Result loading(MapLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastEnded != null) {
      return broadcastEnded(this);
    }
    return orElse();
  }
}

abstract class BroadcastEnded implements MapState {
  const factory BroadcastEnded() = _$BroadcastEnded;
}

abstract class $BroadcastErrorCopyWith<$Res> {
  factory $BroadcastErrorCopyWith(
          BroadcastError value, $Res Function(BroadcastError) then) =
      _$BroadcastErrorCopyWithImpl<$Res>;
}

class _$BroadcastErrorCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $BroadcastErrorCopyWith<$Res> {
  _$BroadcastErrorCopyWithImpl(
      BroadcastError _value, $Res Function(BroadcastError) _then)
      : super(_value, (v) => _then(v as BroadcastError));

  @override
  BroadcastError get _value => super._value as BroadcastError;
}

class _$BroadcastError implements BroadcastError {
  const _$BroadcastError();

  @override
  String toString() {
    return 'MapState.broadcastError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BroadcastError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(Buddy buddy, MapTool mapTool),
    @required Result broadcastEnded(),
    @required Result broadcastError(),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return broadcastError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(Buddy buddy, MapTool mapTool),
    Result broadcastEnded(),
    Result broadcastError(),
    Result loading(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastError != null) {
      return broadcastError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MapInitial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastEnded(BroadcastEnded value),
    @required Result broadcastError(BroadcastError value),
    @required Result loading(MapLoading value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return broadcastError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MapInitial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastEnded(BroadcastEnded value),
    Result broadcastError(BroadcastError value),
    Result loading(MapLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastError != null) {
      return broadcastError(this);
    }
    return orElse();
  }
}

abstract class BroadcastError implements MapState {
  const factory BroadcastError() = _$BroadcastError;
}

abstract class $MapLoadingCopyWith<$Res> {
  factory $MapLoadingCopyWith(
          MapLoading value, $Res Function(MapLoading) then) =
      _$MapLoadingCopyWithImpl<$Res>;
}

class _$MapLoadingCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements $MapLoadingCopyWith<$Res> {
  _$MapLoadingCopyWithImpl(MapLoading _value, $Res Function(MapLoading) _then)
      : super(_value, (v) => _then(v as MapLoading));

  @override
  MapLoading get _value => super._value as MapLoading;
}

class _$MapLoading implements MapLoading {
  const _$MapLoading();

  @override
  String toString() {
    return 'MapState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MapLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(Buddy buddy, MapTool mapTool),
    @required Result broadcastEnded(),
    @required Result broadcastError(),
    @required Result loading(),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(Buddy buddy, MapTool mapTool),
    Result broadcastEnded(),
    Result broadcastError(),
    Result loading(),
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
    @required Result initial(MapInitial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastEnded(BroadcastEnded value),
    @required Result broadcastError(BroadcastError value),
    @required Result loading(MapLoading value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastEnded != null);
    assert(broadcastError != null);
    assert(loading != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MapInitial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastEnded(BroadcastEnded value),
    Result broadcastError(BroadcastError value),
    Result loading(MapLoading value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MapLoading implements MapState {
  const factory MapLoading() = _$MapLoading;
}
