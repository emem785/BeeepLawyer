import 'package:flutter/cupertino.dart';


class Location {
  final double latitude;
  final double longitude;

  Location({@required this.latitude, @required this.longitude})
      : assert(latitude != null, longitude != null);
}