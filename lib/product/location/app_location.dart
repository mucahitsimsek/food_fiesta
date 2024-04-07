import 'package:food_fiesta/product/location/i_location.dart';
import 'package:geolocator/geolocator.dart';

final class AppLocation implements ILocation {
  const AppLocation._();

  static Future<Position> getDeterminePosition() => const AppLocation._().determinePosition();
  static Future<Position> getLastKnownPosition() => const AppLocation._().lastKnownPosition();

  @override
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error(
        const LocationServiceDisabledException().toString(),
      );
    }

    permission = await Geolocator.checkPermission();

    switch (permission) {
      case LocationPermission.denied:
        {
          final permission = await _requestPermission();
          return permission
              ? _getCurrentLocation()
              : Future.error(
                  const PermissionDeniedException(null).toString(),
                );
        }
      case LocationPermission.deniedForever:
        return Future.error(
          const PermissionDeniedException(null).toString(),
        );
      case LocationPermission.whileInUse:
        return _getCurrentLocation();
      case LocationPermission.always:
        return _getCurrentLocation();
      case LocationPermission.unableToDetermine:
        return Future.error(
          const PositionUpdateException(null).toString(),
        );
    }
  }

  @override
  Future<Position> lastKnownPosition() {
    return _getLastKnownPosition();
  }

  Future<Position> _getLastKnownPosition() async {
    return await Geolocator.getLastKnownPosition() ?? await _getCurrentLocation();
  }

  Future<bool> _requestPermission() async {
    final permission = await Geolocator.requestPermission();

    switch (permission) {
      case LocationPermission.denied:
        return false;
      case LocationPermission.deniedForever:
        return false;
      case LocationPermission.whileInUse:
        return true;
      case LocationPermission.always:
        return true;
      case LocationPermission.unableToDetermine:
        return false;
    }
  }

  Future<Position> _getCurrentLocation() async {
    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.bestForNavigation,
    );
  }

  @override
  Future<void> getCity() {
    throw UnimplementedError();
  }

  @override
  Future<void> getCountry() {
    throw UnimplementedError();
  }

  @override
  Future<void> getPlace() {
    throw UnimplementedError();
  }
}
