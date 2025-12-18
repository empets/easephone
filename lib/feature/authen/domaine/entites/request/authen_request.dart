import 'package:freezed_annotation/freezed_annotation.dart';
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
    String? telephon2,
    String? adresse,
    String? email,
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
  }) = _SRequestCreateCompteHeber;

  factory RequestCreateCompteHeber.fromJson(Map<String, dynamic> json) =>
      _$RequestCreateCompteHeberFromJson(json);
}
