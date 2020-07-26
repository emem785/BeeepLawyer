part of 'location_bloc.dart';

@immutable
@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.renderMap() = RenderMap;
  const factory LocationEvent.startOnCallSession() = StartOnCallSession;
  const factory LocationEvent.stopOnCallSession() = StopOnCallSession;
  const factory LocationEvent.resumeOnCallSession() = ResumeOnCallSession;
}
