// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authen_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SRequestAuthen _$SRequestAuthenFromJson(Map<String, dynamic> json) =>
    _SRequestAuthen(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$SRequestAuthenToJson(_SRequestAuthen instance) =>
    <String, dynamic>{'email': instance.email, 'password': instance.password};

_SRequestCreateCompteHomeInformation
_$SRequestCreateCompteHomeInformationFromJson(Map<String, dynamic> json) =>
    _SRequestCreateCompteHomeInformation(
      name: json['name'] as String?,
      specialite: json['specialite'] as String?,
      telephone: json['telephone'] as String?,
      whatsappContact: json['whatsappContact'] as String?,
      adresse: json['adresse'] as String?,
      email: json['email'] as String?,
      facebookLinck: json['facebookLinck'] as String?,
      long: json['long'] as String?,
      lat: json['lat'] as String?,
      autherKey: json['autherKey'] as String?,
      roomNumber: json['roomNumber'] as String?,
      averageBed: json['averageBed'] as String?,
      option: json['option'] as String?,
      description: json['description'] as String?,
      emage: json['emage'] as String?,
      formOne: json['formOne'] as String?,
      formTwo: json['formTwo'] as String?,
      formTherd: json['formTherd'] as String?,
    );

Map<String, dynamic> _$SRequestCreateCompteHomeInformationToJson(
  _SRequestCreateCompteHomeInformation instance,
) => <String, dynamic>{
  'name': instance.name,
  'specialite': instance.specialite,
  'telephone': instance.telephone,
  'whatsappContact': instance.whatsappContact,
  'adresse': instance.adresse,
  'email': instance.email,
  'facebookLinck': instance.facebookLinck,
  'long': instance.long,
  'lat': instance.lat,
  'autherKey': instance.autherKey,
  'roomNumber': instance.roomNumber,
  'averageBed': instance.averageBed,
  'option': instance.option,
  'description': instance.description,
  'emage': instance.emage,
  'formOne': instance.formOne,
  'formTwo': instance.formTwo,
  'formTherd': instance.formTherd,
};

_SRequestCreateCompteHeber _$SRequestCreateCompteHeberFromJson(
  Map<String, dynamic> json,
) => _SRequestCreateCompteHeber(
  roomNumber: json['roomNumber'] as String,
  averageBed: json['averageBed'] as String,
  option: json['option'] as String,
  description: json['description'] as String,
  formTwo: json['formTwo'] as String,
);

Map<String, dynamic> _$SRequestCreateCompteHeberToJson(
  _SRequestCreateCompteHeber instance,
) => <String, dynamic>{
  'roomNumber': instance.roomNumber,
  'averageBed': instance.averageBed,
  'option': instance.option,
  'description': instance.description,
  'formTwo': instance.formTwo,
};

_Coordonne _$CoordonneFromJson(Map<String, dynamic> json) => _Coordonne(
  lat: json['lat'] as String,
  lon: json['lon'] as String,
  display_name: json['display_name'] as String,
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
  heading: (json['heading'] as num?)?.toDouble(),
  lastLatLng: json['lastLatLng'] == null
      ? null
      : LatLng.fromJson(json['lastLatLng'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CoordonneToJson(_Coordonne instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'display_name': instance.display_name,
      'address': instance.address,
      'heading': instance.heading,
      'lastLatLng': instance.lastLatLng,
    };

_GeoLocatedCoordonne _$GeoLocatedCoordonneFromJson(Map<String, dynamic> json) =>
    _GeoLocatedCoordonne(
      adresse_search: (json['adresse_search'] as List<dynamic>)
          .map((e) => GeoLocatedAdresse.fromJson(e as Map<String, dynamic>))
          .toList(),
      adresse_recentes: (json['adresse_recentes'] as List<dynamic>)
          .map((e) => GeoLocatedAdresse.fromJson(e as Map<String, dynamic>))
          .toList(),
      adresse_new: json['adresse_new'] == null
          ? null
          : GeoLocatedAdresse.fromJson(
              json['adresse_new'] as Map<String, dynamic>,
            ),
      current_position: json['current_position'] == null
          ? null
          : GeoLocatedAdresse.fromJson(
              json['current_position'] as Map<String, dynamic>,
            ),
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      adresse: json['adresse'] as String,
      rayon: (json['rayon'] as num).toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      lastLatLng: json['lastLatLng'] == null
          ? null
          : LatLng.fromJson(json['lastLatLng'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeoLocatedCoordonneToJson(
  _GeoLocatedCoordonne instance,
) => <String, dynamic>{
  'adresse_search': instance.adresse_search,
  'adresse_recentes': instance.adresse_recentes,
  'adresse_new': instance.adresse_new,
  'current_position': instance.current_position,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'adresse': instance.adresse,
  'rayon': instance.rayon,
  'heading': instance.heading,
  'lastLatLng': instance.lastLatLng,
};

_GeoLocatedAdresse _$GeoLocatedAdresseFromJson(Map<String, dynamic> json) =>
    _GeoLocatedAdresse(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      adresse: json['adresse'] as String,
      rayon: (json['rayon'] as num).toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      lastLatLng: json['lastLatLng'] == null
          ? null
          : LatLng.fromJson(json['lastLatLng'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeoLocatedAdresseToJson(_GeoLocatedAdresse instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'adresse': instance.adresse,
      'rayon': instance.rayon,
      'heading': instance.heading,
      'lastLatLng': instance.lastLatLng,
    };

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  highway: json['highway'] as String?,
  road: json['road'] as String?,
  suburb: json['suburb'] as String?,
  city: json['city'] as String?,
  state: json['state'] as String?,
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'highway': instance.highway,
  'road': instance.road,
  'suburb': instance.suburb,
  'city': instance.city,
  'state': instance.state,
};

_CreatCompteImage _$CreatCompteImageFromJson(Map<String, dynamic> json) =>
    _CreatCompteImage(
      file: json['file'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$CreatCompteImageToJson(_CreatCompteImage instance) =>
    <String, dynamic>{'file': instance.file, 'userId': instance.userId};
