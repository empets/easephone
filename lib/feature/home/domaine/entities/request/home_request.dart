import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_request.freezed.dart';
part 'home_request.g.dart';

@freezed
abstract class RequestLike with _$RequestLike {
  factory RequestLike({
    required String userId,
    required int compter,
    required String date,
    String? likeId,
  }) = _SRequestLike;

  factory RequestLike.fromJson(Map<String, dynamic> json) =>
      _$RequestLikeFromJson(json);
}

@freezed
abstract class RequestFilterProfile with _$RequestFilterProfile {
  factory RequestFilterProfile({
    required String adresse,
    required bool filterIsActif,
  }) = _SRequestFilterProfile;

  factory RequestFilterProfile.fromJson(Map<String, dynamic> json) =>
      _$RequestFilterProfileFromJson(json);
}

@freezed
abstract class RequestFormsCheckFile with _$RequestFormsCheckFile {
  factory RequestFormsCheckFile({
    required String recto,
    required String verso,
    required String formFive,
  }) = _SRequestFormsCheckFile;

  factory RequestFormsCheckFile.fromJson(Map<String, dynamic> json) =>
      _$RequestFormsCheckFileFromJson(json);
}
