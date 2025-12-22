// import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';


// part 'localisation_event.freezed.dart';

// @freezed
// sealed class GeolocalisationEvent with _$GeolocalisationEvent {
//   factory GeolocalisationEvent.currentPosition({
//     String? latitude,
//     String? longitude,
//   }) = CurrentPositionGeolocalisationEvent;
//   // factory GeolocalisationEvent.searchByName(String value) =
//   //     _SearchByNameGeolocalisationEvent;
//   factory GeolocalisationEvent.searchByLatLng(String lat, String lon) =
//       SearchByLatLngGeolocalisationEvent;
//   factory GeolocalisationEvent.clear() = ClearGeolocalisationEvent;
// }

// @freezed
// sealed class GeolocateCoordonneEvent with _$GeolocateCoordonneEvent {
//   factory GeolocateCoordonneEvent.searchByName(String value) =
//       SearchByNameGeolocateCoordonneEvent;

//   factory GeolocateCoordonneEvent.saveAddress(GeoLocatedAdresse value) =
//       SaveAddressGeolocateCoordonneEvent;

//   factory GeolocateCoordonneEvent.currentPosition(String lat, String lon) =
//       CurrentPositionGeolocateCoordonneEvent;

//   factory GeolocateCoordonneEvent.newPosition(String lat, String lon) =
//       NewPositionGeolocateCoordonneEvent;

//   factory GeolocateCoordonneEvent.onTapPosition(String lat, String lon) =
//       OnTapPositionGeolocateCoordonneEvent;

//   factory GeolocateCoordonneEvent.searchByLatLng(String lat, String lon) =
//       SearchByLatLngGeolocateCoordonneEvent;
//   factory GeolocateCoordonneEvent.clear() = ClearGeolocateCoordonneEvent;
// }
