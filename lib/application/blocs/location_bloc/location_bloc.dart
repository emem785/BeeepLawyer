import 'dart:async';

<<<<<<< HEAD
import 'package:beep_lawyer_3/domain/Interface/api_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/location_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/map_interface.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
=======
import 'package:beep_lawyer2/domain/Interface/api_interface.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer2/domain/Interface/location_interface.dart';
import 'package:beep_lawyer2/domain/Interface/map_interface.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
import 'package:bloc/bloc.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../infrastructure/models/map_tools.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final UserLocationInterface userLocation;
  final MapInterface mapInterface;
  final LocalStorageInterface localStorageInterface;
<<<<<<< HEAD
  final ApiInterface apiInterface;
=======
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
  StreamSubscription<Location> _mapUpdateSubscription;
  MapTool mapTool;

  LocationBloc({
    @required this.localStorageInterface,
    @required this.mapInterface,
    @required this.userLocation,
<<<<<<< HEAD
    @required this.apiInterface,
=======
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
  }) : super(Initial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(renderMap: (e) async* {
<<<<<<< HEAD
      // await apiInterface.updateFirebaseKey(e.firebaseMessaging);
      final location = await userLocation.getLocation();
      await apiInterface.sendLocation(location.latitude, location.latitude);
=======
      final location = await userLocation.getLocation();
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
      mapTool = MapTool(location: location);
      final onCallResponse = await localStorageInterface.getOnCall();
      yield* onCallResponse.fold((l) async* {
        yield MapRendered(mapTool);
      }, (r) async* {
        add(StartOnCallSession());
      });
    }, startOnCallSession: (e) async* {
<<<<<<< HEAD
       final onCall = await apiInterface.startOnCall("True");
      _mapUpdateSubscription = mapInterface.startMapUpdateStream(mapTool);
      // userLocation.startLawyerOnCallSession();
      localStorageInterface.cacheOncall(true);
      yield BroadcastStarted(mapTool);
    }, stopOnCallSession: (e) async* {
      final onCall = await apiInterface.startOnCall("False");
=======
      _mapUpdateSubscription = mapInterface.startMapUpdateStream(mapTool);
      userLocation.startLawyerOnCallSession();
      localStorageInterface.cacheOncall(true);
      yield BroadcastStarted(mapTool);
    }, stopOnCallSession: (e) async* {
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
      _mapUpdateSubscription.cancel();
      userLocation.stopLawyerOnCallSession();
      localStorageInterface.removeOnCall();
      yield BroadcastStopped(mapTool);
    }, resumeOnCallSession: (e) async* {
<<<<<<< HEAD
      final onCall = await apiInterface.startOnCall("True");
      _mapUpdateSubscription = mapInterface.startMapUpdateStream(mapTool);
      // userLocation.startLawyerOnCallSession();
=======
      _mapUpdateSubscription = mapInterface.startMapUpdateStream(mapTool);
      userLocation.startLawyerOnCallSession();
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
      localStorageInterface.cacheOncall(true);
      yield BroadcastStarted(mapTool);
    });
  }
}
