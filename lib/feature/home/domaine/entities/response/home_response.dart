import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response.freezed.dart';
part 'home_response.g.dart';

@freezed
abstract class ActiveUserProfile with _$ActiveUserProfile {
  factory ActiveUserProfile({
    required String adresse,
    required String autherKey,
    required String email,
    required String name,
    required String serviceLibelle,
    required String specialite,
    required String telephone,
    required String user,
    required String averageBed,
    required String description,
    required String option,
    required String roomNumber,
  }) = _SActiveUserProfile;

  factory ActiveUserProfile.fromJson(Map<String, dynamic> json) =>
      _$ActiveUserProfileFromJson(json);

}





