part of 'map_bloc.dart';

@immutable
@freezed
abstract class MapEvent with _$MapEvent{
<<<<<<< HEAD
  const factory MapEvent.renderClientMap(Buddy buddy) = RenderBuddyMap;
=======
  const factory MapEvent.renderBuddyMap() = RenderBuddyMap;
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
  const factory MapEvent.startBroadcast(MapTool mapTool, Buddy buddy) = StartBroadcast;
  const factory MapEvent.stopSecondBroadcast() = StopSecondBroadcast;
}