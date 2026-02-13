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
    required String userId,
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
    required String profileImage,
    required String prixMax,
    required String prixMin,
    required String typeHome,
    required String recto,
    required String verso,
    required String formFive,
  }) = _SActiveUserProfile;

  factory ActiveUserProfile.fromJson(Map<String, dynamic> json) =>
      _$ActiveUserProfileFromJson(json);
}

@freezed
abstract class LikeProfileResponse with _$LikeProfileResponse {
  factory LikeProfileResponse({
    required String likeId,
    required String userId,
    required String postId,
    required String type,
    required String date,
  }) = _SLikeProfileResponse;

  factory LikeProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$LikeProfileResponseFromJson(json);
}
