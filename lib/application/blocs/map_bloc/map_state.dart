part of 'map_bloc.dart';

@immutable
@freezed
abstract class MapState with _$MapState{
  const factory MapState.initial() = MapInitial;
  const factory MapState.mapRendered(MapTool mapTool) = MapRendered;
  const factory MapState.broadcastStarted(Buddy buddy,MapTool mapTool) = BroadcastStarted;
  const factory MapState.broadcastEnded() = BroadcastEnded;
  const factory MapState.broadcastError() = BroadcastError;
  const factory MapState.loading() = MapLoading;
}