import 'package:geolocator/geolocator.dart';

class LocationResult {
  final Position? position;
  final String? error;
  final bool isDenied;
  final bool isPermanentlyDenied;

  LocationResult({
    this.position,
    this.error,
    this.isDenied = false,
    this.isPermanentlyDenied = false,
  });
}

Future<LocationResult> getCurrentLocation() async {
  // Check if location services are enabled
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return LocationResult(
      error: 'Location services are disabled. Please enable them in settings.',
    );
  }

  // Check location permissions
  LocationPermission permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return LocationResult(
        error: 'Location permission denied',
        isDenied: true,
      );
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return LocationResult(
      error:
          'Location permissions are permanently denied. Please enable them in app settings.',
      isPermanentlyDenied: true,
    );
  }

  // Get current position
  try {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    return LocationResult(position: position);
  } catch (e) {
    return LocationResult(error: 'Failed to get location: $e');
  }
}
