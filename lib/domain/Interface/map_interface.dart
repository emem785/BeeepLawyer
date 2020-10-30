import 'dart:async';

<<<<<<< HEAD
import 'package:beep_lawyer_3/infrastructure/models/map_tools.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
=======
import 'package:beep_lawyer2/infrastructure/models/map_tools.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:beep_lawyer2/infrastructure/models/location.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f

abstract class MapInterface {
  StreamSubscription<Location> startMapUpdateStream(MapTool mapTool);
  StreamSubscription<Location> startMapUpdateStreamFromApi(
      MapTool mapTool, String phoneNumber);
  Marker getMarker(Location location);
}
