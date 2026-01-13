import 'package:com.example.epbomi/core/map/models/map_location.dart';

abstract class MapConstants {
  // Default location: Abidjan, Côte d'Ivoire
  static const MapLocation defaultLocation = MapLocation(
    latitude: 5.3600,
    longitude: -4.0100,
    label: 'Abidjan',
  );

  // Default zoom levels
  static const double defaultZoom = 13;
  static const double minZoom = 5;
  static const double maxZoom = 18;

  // OpenStreetMap tile URL
  static const String osmTileUrl =
      'https://tile.openstreetmap.org/{z}/{x}/{y}.png';

  // User agent for tile requests
  static const String userAgent = 'OrangeFiberApp';
}
