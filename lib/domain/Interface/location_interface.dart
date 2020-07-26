import 'dart:async';

import 'package:beep_lawyer2/infrastructure/models/location.dart';

abstract class UserLocationInterface {
  Stream<Location> getUserLocationStream();
  Future<Location> getLocation();
  Future<String> getAddressFromLocation();
  Future<String> getBuddyAddressFromLocation(Location location);
  startLawyerOnCallSession();
  stopLawyerOnCallSession();
}
