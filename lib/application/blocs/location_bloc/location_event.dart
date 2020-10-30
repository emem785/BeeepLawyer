part of 'location_bloc.dart';

@immutable
@freezed
abstract class LocationEvent with _$LocationEvent {
<<<<<<< HEAD
  const factory LocationEvent.renderMap(FirebaseMessaging firebaseMessaging) = RenderMap;
=======
  const factory LocationEvent.renderMap() = RenderMap;
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
  const factory LocationEvent.startOnCallSession() = StartOnCallSession;
  const factory LocationEvent.stopOnCallSession() = StopOnCallSession;
  const factory LocationEvent.resumeOnCallSession() = ResumeOnCallSession;
}
