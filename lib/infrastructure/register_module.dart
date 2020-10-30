import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @injectable
  Geolocator get geolocator => Geolocator();
}
