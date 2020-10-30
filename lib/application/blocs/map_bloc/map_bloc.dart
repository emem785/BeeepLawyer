import 'dart:async';
import 'dart:convert';

<<<<<<< HEAD
import 'package:beep_lawyer_3/application/blocs/location_bloc/location_bloc.dart';
import 'package:beep_lawyer_3/core/error/failure.dart';
import 'package:beep_lawyer_3/domain/Interface/api_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/location_interface.dart';
import 'package:beep_lawyer_3/domain/Interface/map_interface.dart';
import 'package:beep_lawyer_3/infrastructure/models/buddy.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
=======
import 'package:beep_lawyer2/application/blocs/location_bloc/location_bloc.dart';
import 'package:beep_lawyer2/core/error/failure.dart';
import 'package:beep_lawyer2/domain/Interface/api_interface.dart';
import 'package:beep_lawyer2/domain/Interface/local_storage_interface.dart';
import 'package:beep_lawyer2/domain/Interface/location_interface.dart';
import 'package:beep_lawyer2/domain/Interface/map_interface.dart';
import 'package:beep_lawyer2/infrastructure/models/buddy.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../infrastructure/models/map_tools.dart';

part 'map_event.dart';
part 'map_state.dart';
part 'map_bloc.freezed.dart';

@injectable
class MapBloc extends Bloc<MapEvent, MapState> {
  final MapInterface mapInterface;
  final ApiInterface apiInterface;
  final UserLocationInterface userLocationInterface;
  final LocalStorageInterface localStorageInterface;
  StreamSubscription<Location> _mapUpdateSubscription;
  MapTool mapTool;

  MapBloc({
    @required this.userLocationInterface,
    @required this.mapInterface,
    @required this.apiInterface,
    @required this.localStorageInterface,
  }) : super(MapInitial());

  @override
  Stream<MapState> mapEventToState(
    MapEvent event,
  ) async* {
<<<<<<< HEAD
     yield MapLoading();
    yield* event.map(
      renderClientMap: (e) async* {
        final buddyLocation = await _getBuddyLocation(e.buddy.phonenumber);
        final mapTool = MapTool(location: buddyLocation);
        yield MapRendered(mapTool);
        add(StartBroadcast(mapTool, e.buddy));
      },
      startBroadcast: (e) async* {
        print("broadcast started");
        _mapUpdateSubscription = mapInterface.startMapUpdateStreamFromApi(
            e.mapTool, e.buddy.phonenumber);
        yield BroadcastStarted(e.buddy, e.mapTool);
=======
    yield MapLoading();
    yield* event.map(
      renderBuddyMap: (e) async* {
        final locationAndBuddy = await _getBuddyLocation();
        final mapTool = MapTool(location: locationAndBuddy[0]);
        add(StartBroadcast(mapTool, locationAndBuddy[1]));
      },
      startBroadcast: (e) async* {
        _mapUpdateSubscription = mapInterface.startMapUpdateStreamFromApi(
            mapTool, e.buddy.phonenumber);
        yield BroadcastStarted(e.buddy, mapTool);
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
      },
      stopSecondBroadcast: (e) async* {
        _mapUpdateSubscription.cancel();
        yield BroadcastEnded();
      },
    );
  }

<<<<<<< HEAD
  Future<Location> _getBuddyLocation(String phoneNumber) async {
    final location = await apiInterface.getLocation(phoneNumber).first;
    return location;
  }

=======
  Future<List> _getBuddyLocation() async {
    // final response = await localStorageInterface.getBuddy();
    // final buddy =
    //     response.fold((l) => null, (r) => Buddy.fromJson(jsonDecode(r)));
    // final location = await apiInterface.getLocation(buddy.phonenumber).first;
    return [Location(latitude: 2222,longitude: 5555), Buddy(firstname: "dff")];
  }
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
}
