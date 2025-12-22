import 'package:freezed_annotation/freezed_annotation.dart';
part 'like_profile_event.freezed.dart';

@freezed
abstract class LikeProfileEvent with _$LikeProfileEvent {
  factory LikeProfileEvent.likeProfile({bool? like}) = LikeProfileProfileEvent;

  factory LikeProfileEvent.disLikeProfile({bool? disLike}) =
      DisLikeProfileProfileEvent;
}
