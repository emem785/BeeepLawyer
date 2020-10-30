import 'dart:async';
<<<<<<< HEAD
import 'package:beep_lawyer_3/infrastructure/models/location.dart';
=======
import 'package:beep_lawyer2/infrastructure/models/location.dart';
>>>>>>> 143f1349d2ce14b4f679f67a0d62329d3e38bb8f
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

const ZOOM = 17.0;

class MapTool {
  MapController mapController;
  Marker marker;
  Location location;
  StreamController<Marker> markerStreamController;
  String address;

  MapTool({@required Location location}) {
    this.location = location;
    marker = Marker(
      width: 80.0,
      height: 80.0,
      point: LatLng(location.latitude, location.longitude),
      builder: (ctx) => new Container(
        child: Icon(Icons.location_on, color: Colors.red),
      ),
    );
    mapController = MapController();
    markerStreamController = StreamController<Marker>();
  }

  void updateController(Location location) {
    mapController.move(LatLng(location.latitude, location.longitude), ZOOM);
  }

  void setAddress(String address) {
    this.address = address;
  }
}
