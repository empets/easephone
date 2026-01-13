import 'package:freezed_annotation/freezed_annotation.dart';
part 'like_profile_event.freezed.dart';

@freezed
abstract class LikeProfileEvent with _$LikeProfileEvent {
  factory LikeProfileEvent.likeProfile({bool? like, String? userId}) =
      LikeProfileProfileEvent;

  factory LikeProfileEvent.disLikeProfile({bool? disLike, String? userId}) =
      DisLikeProfileProfileEvent;
}
