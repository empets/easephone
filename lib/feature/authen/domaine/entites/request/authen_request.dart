import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
part 'authen_request.freezed.dart';
part 'authen_request.g.dart';

@freezed
abstract class RequestAuthen with _$RequestAuthen {
  factory RequestAuthen({required String email, required String password}) =
      _SRequestAuthen;

  factory RequestAuthen.fromJson(Map<String, dynamic> json) =>
      _$RequestAuthenFromJson(json);
}

@freezed
abstract class RequestCreateCompteHomeInformation
    with _$RequestCreateCompteHomeInformation {
  factory RequestCreateCompteHomeInformation({
    String? name,
    String? specialite,
    String? telephone,
    String? whatsappContact,
    String? adresse,
    String? email,
    String? facebookLinck,
    String? long,
    String? lat,
    String? autherKey,
    String? roomNumber,
    String? averageBed,
    String? option,
    String? description,
    String? emage,
    String? formOne,
    String? formTwo,
    String? formTherd,
  }) = _SRequestCreateCompteHomeInformation;

  factory RequestCreateCompteHomeInformation.fromJson(
    Map<String, dynamic> json,
  ) => _$RequestCreateCompteHomeInformationFromJson(json);
}

@freezed
abstract class RequestCreateCompteHeber with _$RequestCreateCompteHeber {
  factory RequestCreateCompteHeber({
    required String roomNumber,
    required String averageBed,
    required String option,
    required String description,
    required String formTwo,
  }) = _SRequestCreateCompteHeber;

  factory RequestCreateCompteHeber.fromJson(Map<String, dynamic> json) =>
      _$RequestCreateCompteHeberFromJson(json);
}

@freezed
abstract class Coordonne with _$Coordonne {
  factory Coordonne({
    required String lat,
    required String lon,
    required String display_name,
    required Address? address, //boundingbox
    double? heading, //boundingbox
    LatLng? lastLatLng,
  }) = _Coordonne;

  factory Coordonne.fromJson(Map<String, dynamic> json) =>
      _$CoordonneFromJson(json);
}

@freezed
abstract class GeoLocatedCoordonne with _$GeoLocatedCoordonne {
  factory GeoLocatedCoordonne({
    required List<GeoLocatedAdresse> adresse_search,
    required List<GeoLocatedAdresse> adresse_recentes,
    GeoLocatedAdresse? adresse_new,
    GeoLocatedAdresse? current_position,
    required String latitude,
    required String longitude,
    required String adresse,
    required double rayon,
    double? heading,
    LatLng? lastLatLng,
  }) = _GeoLocatedCoordonne;

  factory GeoLocatedCoordonne.fromJson(Map<String, dynamic> json) =>
      _$GeoLocatedCoordonneFromJson(json);
}

@freezed
abstract class GeoLocatedAdresse with _$GeoLocatedAdresse {
  factory GeoLocatedAdresse({
    required String latitude,
    required String longitude,
    required String adresse,
    required double rayon,
    double? heading,
    LatLng? lastLatLng,
  }) = _GeoLocatedAdresse;

  factory GeoLocatedAdresse.fromJson(Map<String, dynamic> json) =>
      _$GeoLocatedAdresseFromJson(json);
}

@freezed
abstract class Address with _$Address {
  factory Address({
    required String? highway, // mot rechercher
    required String? road,
    required String? suburb, // quartier
    required String? city, // commune
    required String? state, // ville
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
