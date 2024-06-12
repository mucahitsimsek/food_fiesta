import 'package:geolocator/geolocator.dart';

abstract interface class ILocation {
  Future<Position> determinePosition();
  Future<Position> lastKnownPosition();
  Future<void> getPlace();
  Future<void> getCity();
  Future<void> getCountry();
}
