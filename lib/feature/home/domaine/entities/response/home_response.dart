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
    required String facebookLinck,
    required String lat,
    required String long,
    required String whatsappContact,
    required String formOne,
    required String formTwo,
    required String formTherd,
    required String file,
    required String  profileImage
  }) = _SActiveUserProfile;

  factory ActiveUserProfile.fromJson(Map<String, dynamic> json) =>
      _$ActiveUserProfileFromJson(json);
}

@freezed
abstract class LikeResponse with _$LikeResponse {
  factory LikeResponse({required int compter, required String userId, required String likeId}) =
      _SLikeResponse;

  factory LikeResponse.fromJson(Map<String, dynamic> json) =>
      _$LikeResponseFromJson(json);
}
