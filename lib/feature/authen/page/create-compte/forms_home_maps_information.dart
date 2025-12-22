
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:equatable/equatable.dart';
// import 'package:latlong2/latlong.dart';

// class MapMarkerData extends Equatable {
//   final MapLocation location;
//   final Color color;
//   final double size;
//   final String? label;

//   const MapMarkerData({
//     required this.location,
//     this.color = Colors.orange,
//     this.size = 40.0,
//     this.label,
//   });

//   @override
//   List<Object?> get props => [location, color, size, label];

//   MapMarkerData copyWith({
//     MapLocation? location,
//     Color? color,
//     double? size,
//     String? label,
//   }) {
//     return MapMarkerData(
//       location: location ?? this.location,
//       color: color ?? this.color,
//       size: size ?? this.size,
//       label: label ?? this.label,
//     );
//   }
// }


// class MapLocation extends Equatable {
//   final double latitude;
//   final double longitude;
//   final String? label;

//   const MapLocation({
//     required this.latitude,
//     required this.longitude,
//     this.label,
//   });

//   LatLng toLatLng() => LatLng(latitude, longitude);

//   @override
//   List<Object?> get props => [latitude, longitude, label];

//   MapLocation copyWith({
//     double? latitude,
//     double? longitude,
//     String? label,
//   }) {
//     return MapLocation(
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//       label: label ?? this.label,
//     );
//   }

//   @override
//   String toString() => 'MapLocation(lat: $latitude, lng: $longitude${label != null ? ', label: $label' : ''})';
// }


// abstract class MapConstants {
//   // Default location: Abidjan, Côte d'Ivoire
//   static const MapLocation defaultLocation = MapLocation(
//     latitude: 5.3600,
//     longitude: -4.0100,
//     label: 'Abidjan',
//   );

//   // Default zoom levels
//   static const double defaultZoom = 13;
//   static const double minZoom = 5;
//   static const double maxZoom = 18;

//   // OpenStreetMap tile URL
//   static const String osmTileUrl =
//       'https://tile.openstreetmap.org/{z}/{x}/{y}.png';

//   // User agent for tile requests
//   static const String userAgent = 'OrangeFiberApp';
// }


// class InteractiveMap extends StatefulWidget {
//   const InteractiveMap({
//     super.key,
//     this.initialLocation = MapConstants.defaultLocation,
//     this.initialZoom = MapConstants.defaultZoom,
//     this.markers = const [],
//     this.onTap,
//     this.interactive = true,
//     this.onControlsReady,
//   });
//   final MapLocation initialLocation;
//   final double initialZoom;
//   final List<MapMarkerData> markers;
//   final Function(MapLocation)? onTap;
//   final bool interactive;
//   final Function(
//           VoidCallback zoomIn, VoidCallback zoomOut, VoidCallback recenter)?
//       onControlsReady;

//   @override
//   State<InteractiveMap> createState() => _InteractiveMapState();
// }

// class _InteractiveMapState extends State<InteractiveMap> {
//   late final MapController _mapController;

//   @override
//   void initState() {
//     super.initState();
//     _mapController = MapController();

//     // Notify parent about control callbacks after first frame
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       widget.onControlsReady?.call(_zoomIn, _zoomOut, _recenter);
//     });
//   }

//   @override
//   void dispose() {
//     _mapController.dispose();
//     super.dispose();
//   }

//   void _zoomIn() {
//     final currentZoom = _mapController.camera.zoom;
//     final newZoom =
//         (currentZoom + 1).clamp(MapConstants.minZoom, MapConstants.maxZoom);
//     _mapController.move(_mapController.camera.center, newZoom);
//   }

//   void _zoomOut() {
//     final currentZoom = _mapController.camera.zoom;
//     final newZoom =
//         (currentZoom - 1).clamp(MapConstants.minZoom, MapConstants.maxZoom);
//     _mapController.move(_mapController.camera.center, newZoom);
//   }

//   void _recenter() {
//     _mapController.move(
//       widget.initialLocation.toLatLng(),
//       widget.initialZoom,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FlutterMap(
//       mapController: _mapController,
//       options: MapOptions(
//         initialCenter: widget.initialLocation.toLatLng(),
//         initialZoom: widget.initialZoom,
//         minZoom: MapConstants.minZoom,
//         maxZoom: MapConstants.maxZoom,
//         interactionOptions: InteractionOptions(
//           flags:
//               widget.interactive ? InteractiveFlag.all : InteractiveFlag.none,
//         ),
//         onTap: widget.onTap != null
//             ? (tapPosition, point) {
//                 widget.onTap!(
//                   MapLocation(
//                     latitude: point.latitude,
//                     longitude: point.longitude,
//                   ),
//                 );
//               }
//             : null,
//       ),
//       children: [
//         TileLayer(
//           urlTemplate: MapConstants.osmTileUrl,
//           userAgentPackageName: MapConstants.userAgent,
//         ),
//         if (widget.markers.isNotEmpty)
//           MarkerLayer(
//             markers: widget.markers.map((markerData) {
//               return Marker(
//                 point: markerData.location.toLatLng(),
//                 width: markerData.size,
//                 height: markerData.size,
//                 child: MapMarker(
//                   color: markerData.color,
//                   size: markerData.size,
//                 ),
//               );
//             }).toList(),
//           ),
//       ],
//     );
//   }
// }


// class MapMarker extends StatelessWidget {
//   final Color color;
//   final double size;

//   const MapMarker({
//     super.key,
//     this.color = Colors.orange,
//     this.size = 40.0,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Icon(
//       Icons.location_on,
//       color: color,
//       size: size,
//     );
//   }
// }
