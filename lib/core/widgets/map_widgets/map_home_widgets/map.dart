import 'package:beep_lawyer2/infrastructure/models/location.dart';
import 'package:beep_lawyer2/infrastructure/models/map_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Map extends StatelessWidget {
  final MapTool mapTool;
  final Stream<Marker> markerStream;

  Map({Key key, @required this.mapTool, @required this.markerStream})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   StreamBuilder<Marker>(
        stream: markerStream,
        initialData: mapTool.marker,
        builder: (context, snapshot) {
          return FlutterMap(
            options: MapOptions(
              center:
                  LatLng(mapTool.location.latitude, mapTool.location.longitude),
              zoom: ZOOM,
            ),
            mapController: mapTool.mapController,
            layers: [
              TileLayerOptions(
                urlTemplate: "https://api.tiles.mapbox.com/v4/"
                    "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
                additionalOptions: {
                  'accessToken':
                      'pk.eyJ1IjoiZW1lbTc4NSIsImEiOiJjazVmOTViZ2EyZjZpM2xxaGFjNmVqMmxpIn0.IrkZKaDokjBJ3mnKnNzfoQ',
                  'id': 'mapbox.mapbox-streets-v8',
                },
              ),
              MarkerLayerOptions(
                markers: [snapshot.data],
              ),
            ],
          );
        });
  }
}
