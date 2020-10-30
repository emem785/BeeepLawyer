// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LocationEventTearOff {
  const _$LocationEventTearOff();

// ignore: unused_element
  RenderMap renderMap(FirebaseMessaging firebaseMessaging) {
    return RenderMap(
      firebaseMessaging,
    );
  }

// ignore: unused_element
  StartOnCallSession startOnCallSession() {
    return const StartOnCallSession();
  }

// ignore: unused_element
  StopOnCallSession stopOnCallSession() {
    return const StopOnCallSession();
  }

// ignore: unused_element
  ResumeOnCallSession resumeOnCallSession() {
    return const ResumeOnCallSession();
  }
}

// ignore: unused_element
const $LocationEvent = _$LocationEventTearOff();

mixin _$LocationEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderMap(FirebaseMessaging firebaseMessaging),
    @required Result startOnCallSession(),
    @required Result stopOnCallSession(),
    @required Result resumeOnCallSession(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderMap(FirebaseMessaging firebaseMessaging),
    Result startOnCallSession(),
    Result stopOnCallSession(),
    Result resumeOnCallSession(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderMap(RenderMap value),
    @required Result startOnCallSession(StartOnCallSession value),
    @required Result stopOnCallSession(StopOnCallSession value),
    @required Result resumeOnCallSession(ResumeOnCallSession value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderMap(RenderMap value),
    Result startOnCallSession(StartOnCallSession value),
    Result stopOnCallSession(StopOnCallSession value),
    Result resumeOnCallSession(ResumeOnCallSession value),
    @required Result orElse(),
  });
}

abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

abstract class $RenderMapCopyWith<$Res> {
  factory $RenderMapCopyWith(RenderMap value, $Res Function(RenderMap) then) =
      _$RenderMapCopyWithImpl<$Res>;
  $Res call({FirebaseMessaging firebaseMessaging});
}

class _$RenderMapCopyWithImpl<$Res> extends _$LocationEventCopyWithImpl<$Res>
    implements $RenderMapCopyWith<$Res> {
  _$RenderMapCopyWithImpl(RenderMap _value, $Res Function(RenderMap) _then)
      : super(_value, (v) => _then(v as RenderMap));

  @override
  RenderMap get _value => super._value as RenderMap;

  @override
  $Res call({
    Object firebaseMessaging = freezed,
  }) {
    return _then(RenderMap(
      firebaseMessaging == freezed
          ? _value.firebaseMessaging
          : firebaseMessaging as FirebaseMessaging,
    ));
  }
}

class _$RenderMap with DiagnosticableTreeMixin implements RenderMap {
  const _$RenderMap(this.firebaseMessaging) : assert(firebaseMessaging != null);

  @override
  final FirebaseMessaging firebaseMessaging;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.renderMap(firebaseMessaging: $firebaseMessaging)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.renderMap'))
      ..add(DiagnosticsProperty('firebaseMessaging', firebaseMessaging));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RenderMap &&
            (identical(other.firebaseMessaging, firebaseMessaging) ||
                const DeepCollectionEquality()
                    .equals(other.firebaseMessaging, firebaseMessaging)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firebaseMessaging);

  @override
  $RenderMapCopyWith<RenderMap> get copyWith =>
      _$RenderMapCopyWithImpl<RenderMap>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderMap(FirebaseMessaging firebaseMessaging),
    @required Result startOnCallSession(),
    @required Result stopOnCallSession(),
    @required Result resumeOnCallSession(),
  }) {
    assert(renderMap != null);
    assert(startOnCallSession != null);
    assert(stopOnCallSession != null);
    assert(resumeOnCallSession != null);
    return renderMap(firebaseMessaging);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderMap(FirebaseMessaging firebaseMessaging),
    Result startOnCallSession(),
    Result stopOnCallSession(),
    Result resumeOnCallSession(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderMap != null) {
      return renderMap(firebaseMessaging);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderMap(RenderMap value),
    @required Result startOnCallSession(StartOnCallSession value),
    @required Result stopOnCallSession(StopOnCallSession value),
    @required Result resumeOnCallSession(ResumeOnCallSession value),
  }) {
    assert(renderMap != null);
    assert(startOnCallSession != null);
    assert(stopOnCallSession != null);
    assert(resumeOnCallSession != null);
    return renderMap(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderMap(RenderMap value),
    Result startOnCallSession(StartOnCallSession value),
    Result stopOnCallSession(StopOnCallSession value),
    Result resumeOnCallSession(ResumeOnCallSession value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (renderMap != null) {
      return renderMap(this);
    }
    return orElse();
  }
}

abstract class RenderMap implements LocationEvent {
  const factory RenderMap(FirebaseMessaging firebaseMessaging) = _$RenderMap;

  FirebaseMessaging get firebaseMessaging;
  $RenderMapCopyWith<RenderMap> get copyWith;
}

abstract class $StartOnCallSessionCopyWith<$Res> {
  factory $StartOnCallSessionCopyWith(
          StartOnCallSession value, $Res Function(StartOnCallSession) then) =
      _$StartOnCallSessionCopyWithImpl<$Res>;
}

class _$StartOnCallSessionCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $StartOnCallSessionCopyWith<$Res> {
  _$StartOnCallSessionCopyWithImpl(
      StartOnCallSession _value, $Res Function(StartOnCallSession) _then)
      : super(_value, (v) => _then(v as StartOnCallSession));

  @override
  StartOnCallSession get _value => super._value as StartOnCallSession;
}

class _$StartOnCallSession
    with DiagnosticableTreeMixin
    implements StartOnCallSession {
  const _$StartOnCallSession();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.startOnCallSession()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.startOnCallSession'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartOnCallSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderMap(FirebaseMessaging firebaseMessaging),
    @required Result startOnCallSession(),
    @required Result stopOnCallSession(),
    @required Result resumeOnCallSession(),
  }) {
    assert(renderMap != null);
    assert(startOnCallSession != null);
    assert(stopOnCallSession != null);
    assert(resumeOnCallSession != null);
    return startOnCallSession();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderMap(FirebaseMessaging firebaseMessaging),
    Result startOnCallSession(),
    Result stopOnCallSession(),
    Result resumeOnCallSession(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startOnCallSession != null) {
      return startOnCallSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderMap(RenderMap value),
    @required Result startOnCallSession(StartOnCallSession value),
    @required Result stopOnCallSession(StopOnCallSession value),
    @required Result resumeOnCallSession(ResumeOnCallSession value),
  }) {
    assert(renderMap != null);
    assert(startOnCallSession != null);
    assert(stopOnCallSession != null);
    assert(resumeOnCallSession != null);
    return startOnCallSession(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderMap(RenderMap value),
    Result startOnCallSession(StartOnCallSession value),
    Result stopOnCallSession(StopOnCallSession value),
    Result resumeOnCallSession(ResumeOnCallSession value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startOnCallSession != null) {
      return startOnCallSession(this);
    }
    return orElse();
  }
}

abstract class StartOnCallSession implements LocationEvent {
  const factory StartOnCallSession() = _$StartOnCallSession;
}

abstract class $StopOnCallSessionCopyWith<$Res> {
  factory $StopOnCallSessionCopyWith(
          StopOnCallSession value, $Res Function(StopOnCallSession) then) =
      _$StopOnCallSessionCopyWithImpl<$Res>;
}

class _$StopOnCallSessionCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $StopOnCallSessionCopyWith<$Res> {
  _$StopOnCallSessionCopyWithImpl(
      StopOnCallSession _value, $Res Function(StopOnCallSession) _then)
      : super(_value, (v) => _then(v as StopOnCallSession));

  @override
  StopOnCallSession get _value => super._value as StopOnCallSession;
}

class _$StopOnCallSession
    with DiagnosticableTreeMixin
    implements StopOnCallSession {
  const _$StopOnCallSession();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.stopOnCallSession()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.stopOnCallSession'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopOnCallSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderMap(FirebaseMessaging firebaseMessaging),
    @required Result startOnCallSession(),
    @required Result stopOnCallSession(),
    @required Result resumeOnCallSession(),
  }) {
    assert(renderMap != null);
    assert(startOnCallSession != null);
    assert(stopOnCallSession != null);
    assert(resumeOnCallSession != null);
    return stopOnCallSession();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderMap(FirebaseMessaging firebaseMessaging),
    Result startOnCallSession(),
    Result stopOnCallSession(),
    Result resumeOnCallSession(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopOnCallSession != null) {
      return stopOnCallSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderMap(RenderMap value),
    @required Result startOnCallSession(StartOnCallSession value),
    @required Result stopOnCallSession(StopOnCallSession value),
    @required Result resumeOnCallSession(ResumeOnCallSession value),
  }) {
    assert(renderMap != null);
    assert(startOnCallSession != null);
    assert(stopOnCallSession != null);
    assert(resumeOnCallSession != null);
    return stopOnCallSession(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderMap(RenderMap value),
    Result startOnCallSession(StartOnCallSession value),
    Result stopOnCallSession(StopOnCallSession value),
    Result resumeOnCallSession(ResumeOnCallSession value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopOnCallSession != null) {
      return stopOnCallSession(this);
    }
    return orElse();
  }
}

abstract class StopOnCallSession implements LocationEvent {
  const factory StopOnCallSession() = _$StopOnCallSession;
}

abstract class $ResumeOnCallSessionCopyWith<$Res> {
  factory $ResumeOnCallSessionCopyWith(
          ResumeOnCallSession value, $Res Function(ResumeOnCallSession) then) =
      _$ResumeOnCallSessionCopyWithImpl<$Res>;
}

class _$ResumeOnCallSessionCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements $ResumeOnCallSessionCopyWith<$Res> {
  _$ResumeOnCallSessionCopyWithImpl(
      ResumeOnCallSession _value, $Res Function(ResumeOnCallSession) _then)
      : super(_value, (v) => _then(v as ResumeOnCallSession));

  @override
  ResumeOnCallSession get _value => super._value as ResumeOnCallSession;
}

class _$ResumeOnCallSession
    with DiagnosticableTreeMixin
    implements ResumeOnCallSession {
  const _$ResumeOnCallSession();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.resumeOnCallSession()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.resumeOnCallSession'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResumeOnCallSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result renderMap(FirebaseMessaging firebaseMessaging),
    @required Result startOnCallSession(),
    @required Result stopOnCallSession(),
    @required Result resumeOnCallSession(),
  }) {
    assert(renderMap != null);
    assert(startOnCallSession != null);
    assert(stopOnCallSession != null);
    assert(resumeOnCallSession != null);
    return resumeOnCallSession();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result renderMap(FirebaseMessaging firebaseMessaging),
    Result startOnCallSession(),
    Result stopOnCallSession(),
    Result resumeOnCallSession(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resumeOnCallSession != null) {
      return resumeOnCallSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result renderMap(RenderMap value),
    @required Result startOnCallSession(StartOnCallSession value),
    @required Result stopOnCallSession(StopOnCallSession value),
    @required Result resumeOnCallSession(ResumeOnCallSession value),
  }) {
    assert(renderMap != null);
    assert(startOnCallSession != null);
    assert(stopOnCallSession != null);
    assert(resumeOnCallSession != null);
    return resumeOnCallSession(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result renderMap(RenderMap value),
    Result startOnCallSession(StartOnCallSession value),
    Result stopOnCallSession(StopOnCallSession value),
    Result resumeOnCallSession(ResumeOnCallSession value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resumeOnCallSession != null) {
      return resumeOnCallSession(this);
    }
    return orElse();
  }
}

abstract class ResumeOnCallSession implements LocationEvent {
  const factory ResumeOnCallSession() = _$ResumeOnCallSession;
}

class _$LocationStateTearOff {
  const _$LocationStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  MapRendered mapRendered(MapTool mapTool) {
    return MapRendered(
      mapTool,
    );
  }

// ignore: unused_element
  BroadcastStarted broadcastStarted(MapTool mapTool) {
    return BroadcastStarted(
      mapTool,
    );
  }

// ignore: unused_element
  BroadcastStopped broadcastStopped(MapTool mapTool) {
    return BroadcastStopped(
      mapTool,
    );
  }
}

// ignore: unused_element
const $LocationState = _$LocationStateTearOff();

mixin _$LocationState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(MapTool mapTool),
    @required Result broadcastStopped(MapTool mapTool),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(MapTool mapTool),
    Result broadcastStopped(MapTool mapTool),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastStopped(BroadcastStopped value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastStopped(BroadcastStopped value),
    @required Result orElse(),
  });
}

abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LocationState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(MapTool mapTool),
    @required Result broadcastStopped(MapTool mapTool),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastStopped != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(MapTool mapTool),
    Result broadcastStopped(MapTool mapTool),
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
    @required Result initial(Initial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastStopped(BroadcastStopped value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastStopped != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastStopped(BroadcastStopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LocationState {
  const factory Initial() = _$Initial;
}

abstract class $MapRenderedCopyWith<$Res> {
  factory $MapRenderedCopyWith(
          MapRendered value, $Res Function(MapRendered) then) =
      _$MapRenderedCopyWithImpl<$Res>;
  $Res call({MapTool mapTool});
}

class _$MapRenderedCopyWithImpl<$Res> extends _$LocationStateCopyWithImpl<$Res>
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

class _$MapRendered with DiagnosticableTreeMixin implements MapRendered {
  const _$MapRendered(this.mapTool) : assert(mapTool != null);

  @override
  final MapTool mapTool;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState.mapRendered(mapTool: $mapTool)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState.mapRendered'))
      ..add(DiagnosticsProperty('mapTool', mapTool));
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
    @required Result broadcastStarted(MapTool mapTool),
    @required Result broadcastStopped(MapTool mapTool),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastStopped != null);
    return mapRendered(mapTool);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(MapTool mapTool),
    Result broadcastStopped(MapTool mapTool),
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
    @required Result initial(Initial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastStopped(BroadcastStopped value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastStopped != null);
    return mapRendered(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastStopped(BroadcastStopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (mapRendered != null) {
      return mapRendered(this);
    }
    return orElse();
  }
}

abstract class MapRendered implements LocationState {
  const factory MapRendered(MapTool mapTool) = _$MapRendered;

  MapTool get mapTool;
  $MapRenderedCopyWith<MapRendered> get copyWith;
}

abstract class $BroadcastStartedCopyWith<$Res> {
  factory $BroadcastStartedCopyWith(
          BroadcastStarted value, $Res Function(BroadcastStarted) then) =
      _$BroadcastStartedCopyWithImpl<$Res>;
  $Res call({MapTool mapTool});
}

class _$BroadcastStartedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements $BroadcastStartedCopyWith<$Res> {
  _$BroadcastStartedCopyWithImpl(
      BroadcastStarted _value, $Res Function(BroadcastStarted) _then)
      : super(_value, (v) => _then(v as BroadcastStarted));

  @override
  BroadcastStarted get _value => super._value as BroadcastStarted;

  @override
  $Res call({
    Object mapTool = freezed,
  }) {
    return _then(BroadcastStarted(
      mapTool == freezed ? _value.mapTool : mapTool as MapTool,
    ));
  }
}

class _$BroadcastStarted
    with DiagnosticableTreeMixin
    implements BroadcastStarted {
  const _$BroadcastStarted(this.mapTool) : assert(mapTool != null);

  @override
  final MapTool mapTool;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState.broadcastStarted(mapTool: $mapTool)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState.broadcastStarted'))
      ..add(DiagnosticsProperty('mapTool', mapTool));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BroadcastStarted &&
            (identical(other.mapTool, mapTool) ||
                const DeepCollectionEquality().equals(other.mapTool, mapTool)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mapTool);

  @override
  $BroadcastStartedCopyWith<BroadcastStarted> get copyWith =>
      _$BroadcastStartedCopyWithImpl<BroadcastStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(MapTool mapTool),
    @required Result broadcastStopped(MapTool mapTool),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastStopped != null);
    return broadcastStarted(mapTool);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(MapTool mapTool),
    Result broadcastStopped(MapTool mapTool),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastStarted != null) {
      return broadcastStarted(mapTool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastStopped(BroadcastStopped value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastStopped != null);
    return broadcastStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastStopped(BroadcastStopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastStarted != null) {
      return broadcastStarted(this);
    }
    return orElse();
  }
}

abstract class BroadcastStarted implements LocationState {
  const factory BroadcastStarted(MapTool mapTool) = _$BroadcastStarted;

  MapTool get mapTool;
  $BroadcastStartedCopyWith<BroadcastStarted> get copyWith;
}

abstract class $BroadcastStoppedCopyWith<$Res> {
  factory $BroadcastStoppedCopyWith(
          BroadcastStopped value, $Res Function(BroadcastStopped) then) =
      _$BroadcastStoppedCopyWithImpl<$Res>;
  $Res call({MapTool mapTool});
}

class _$BroadcastStoppedCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements $BroadcastStoppedCopyWith<$Res> {
  _$BroadcastStoppedCopyWithImpl(
      BroadcastStopped _value, $Res Function(BroadcastStopped) _then)
      : super(_value, (v) => _then(v as BroadcastStopped));

  @override
  BroadcastStopped get _value => super._value as BroadcastStopped;

  @override
  $Res call({
    Object mapTool = freezed,
  }) {
    return _then(BroadcastStopped(
      mapTool == freezed ? _value.mapTool : mapTool as MapTool,
    ));
  }
}

class _$BroadcastStopped
    with DiagnosticableTreeMixin
    implements BroadcastStopped {
  const _$BroadcastStopped(this.mapTool) : assert(mapTool != null);

  @override
  final MapTool mapTool;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState.broadcastStopped(mapTool: $mapTool)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LocationState.broadcastStopped'))
      ..add(DiagnosticsProperty('mapTool', mapTool));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BroadcastStopped &&
            (identical(other.mapTool, mapTool) ||
                const DeepCollectionEquality().equals(other.mapTool, mapTool)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mapTool);

  @override
  $BroadcastStoppedCopyWith<BroadcastStopped> get copyWith =>
      _$BroadcastStoppedCopyWithImpl<BroadcastStopped>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result mapRendered(MapTool mapTool),
    @required Result broadcastStarted(MapTool mapTool),
    @required Result broadcastStopped(MapTool mapTool),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastStopped != null);
    return broadcastStopped(mapTool);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result mapRendered(MapTool mapTool),
    Result broadcastStarted(MapTool mapTool),
    Result broadcastStopped(MapTool mapTool),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastStopped != null) {
      return broadcastStopped(mapTool);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result mapRendered(MapRendered value),
    @required Result broadcastStarted(BroadcastStarted value),
    @required Result broadcastStopped(BroadcastStopped value),
  }) {
    assert(initial != null);
    assert(mapRendered != null);
    assert(broadcastStarted != null);
    assert(broadcastStopped != null);
    return broadcastStopped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result mapRendered(MapRendered value),
    Result broadcastStarted(BroadcastStarted value),
    Result broadcastStopped(BroadcastStopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (broadcastStopped != null) {
      return broadcastStopped(this);
    }
    return orElse();
  }
}

abstract class BroadcastStopped implements LocationState {
  const factory BroadcastStopped(MapTool mapTool) = _$BroadcastStopped;

  MapTool get mapTool;
  $BroadcastStoppedCopyWith<BroadcastStopped> get copyWith;
}
