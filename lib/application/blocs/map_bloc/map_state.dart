part of 'map_bloc.dart';

@immutable
@freezed
abstract class MapState with _$MapState{
  const factory MapState.initial() = MapInitial;
<<<<<<< HEAD
  const factory MapState.mapRendered(MapTool mapTool) = MapRendered;
=======
  const factory MapState.mapRendered(MapTool mapTool,Buddy buddy) = MapRendered;
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
  const factory MapState.broadcastStarted(Buddy buddy,MapTool mapTool) = BroadcastStarted;
  const factory MapState.broadcastEnded() = BroadcastEnded;
  const factory MapState.broadcastError() = BroadcastError;
  const factory MapState.loading() = MapLoading;
}