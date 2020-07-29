import 'dart:async';

import 'package:beep_lawyer2/domain/Interface/api_interface.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer2/domain/Interface/location_interface.dart';
import 'package:beep_lawyer2/domain/Interface/map_interface.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
import 'package:bloc/bloc.dart';
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
  StreamSubscription<Location> _mapUpdateSubscription;
  MapTool mapTool;

  LocationBloc({
    @required this.localStorageInterface,
    @required this.mapInterface,
    @required this.userLocation,
  }) : super(Initial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(renderMap: (e) async* {
      final location = await userLocation.getLocation();
      mapTool = MapTool(location: location);
      final onCallResponse = await localStorageInterface.getOnCall();
      yield* onCallResponse.fold((l) async* {
        yield MapRendered(mapTool);
      }, (r) async* {
        add(StartOnCallSession());
      });
    }, startOnCallSession: (e) async* {
      _mapUpdateSubscription = mapInterface.startMapUpdateStream(mapTool);
      userLocation.startLawyerOnCallSession();
      localStorageInterface.cacheOncall(true);
      yield BroadcastStarted(mapTool);
    }, stopOnCallSession: (e) async* {
      _mapUpdateSubscription.cancel();
      userLocation.stopLawyerOnCallSession();
      localStorageInterface.removeOnCall();
      yield BroadcastStopped(mapTool);
    }, resumeOnCallSession: (e) async* {
      _mapUpdateSubscription = mapInterface.startMapUpdateStream(mapTool);
      userLocation.startLawyerOnCallSession();
      localStorageInterface.cacheOncall(true);
      yield BroadcastStarted(mapTool);
    });
  }
}
