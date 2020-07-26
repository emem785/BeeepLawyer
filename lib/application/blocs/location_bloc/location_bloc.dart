import 'dart:async';

import 'package:beep_lawyer2/domain/Interface/api_interface.dart';
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
  final ApiInterface apiInterface;
  final MapInterface mapInterface;
  StreamSubscription<Location> _apiUpdateSubscription;
  StreamSubscription<Location> _mapUpdateSubscription;
  MapTool mapTool;

  LocationBloc(
      {@required this.mapInterface,
      @required this.userLocation,
      @required this.apiInterface})
      : super(Initial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(renderMap: (e) async* {
      final location = await userLocation.getLocation();
      mapTool = await mapInterface.getMapToolWithAddress(MapTool(location: location));
      yield MapRendered(mapTool);
    }, broadcastLocation: (e) async* {
      await _startOrStopBeep("start");
      _apiUpdateSubscription = apiInterface
          .sendLocationAsStream(userLocation.getUserLocationStream());
      _mapUpdateSubscription = mapInterface.startMapUpdateStream(mapTool);
      yield BroadcastStarted(mapTool);
    }, stopBroadcast: (e) async* {
      await _startOrStopBeep("stop");
      _apiUpdateSubscription.cancel();
      _mapUpdateSubscription.cancel();
      yield BroadcastStopped(mapTool);
    }, resumeBroadcast: (e) async* {
      await _startOrStopBeep("start");
      _mapUpdateSubscription = mapInterface.startMapUpdateStream(mapTool);
      _apiUpdateSubscription = apiInterface
          .sendLocationAsStream(userLocation.getUserLocationStream());
      yield BroadcastStarted(mapTool);
    });
  }

  _startOrStopBeep(String action) async {
    final location = await userLocation.getLocation();
    apiInterface.beep(action, location);
  }
}
