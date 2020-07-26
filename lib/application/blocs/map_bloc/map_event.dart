part of 'map_bloc.dart';

@immutable
@freezed
abstract class MapEvent with _$MapEvent{
  const factory MapEvent.renderBuddyMap() = RenderBuddyMap;
  const factory MapEvent.startBroadcast(MapTool mapTool, Buddy buddy) = StartBroadcast;
  const factory MapEvent.stopSecondBroadcast() = StopSecondBroadcast;
}