part of 'location_bloc.dart';

@immutable
@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = Initial;
  const factory LocationState.mapRendered(MapTool mapTool) = MapRendered;
  const factory LocationState.broadcastStarted(MapTool mapTool) = BroadcastStarted;
  const factory LocationState.broadcastStopped(MapTool mapTool) = BroadcastStopped;
}
