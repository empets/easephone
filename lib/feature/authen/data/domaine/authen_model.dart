import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/core/extension/extensions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'authen_model.freezed.dart';
part 'authen_model.g.dart';

@freezed
abstract class ProfileUserModel with _$ProfileUserModel {
  factory ProfileUserModel({
    required String? email,
    required String? password,
    required String? userId,
    required String? profileImage,
  }) = _SProfileUserModel;

  factory ProfileUserModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserModelFromJson(json);

  static ProfileUser toDomain(ProfileUserModel model) {
    return ProfileUser(
      email: model.email.getOrEmpty(),
      password: model.password.getOrEmpty(),
      userId: model.userId.getOrEmpty(),
      profileImage: model.profileImage.getOrEmpty(),
    );
  }
}
