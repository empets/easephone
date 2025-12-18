import 'package:com.example.epbomi/core/extension/extensions.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response_model.freezed.dart';
part 'home_response_model.g.dart';

@freezed
abstract class ActiveUserProfileModel with _$ActiveUserProfileModel {
  factory ActiveUserProfileModel({
    required String? adresse,
    required String? autherKey,
    required String? email,
    required String? name,
    required String? serviceLibelle,
    required String? specialite,
    required String? telephone,
    required String? user,
    required String? averageBed,
    required String? description,
    required String? option,
    required String? roomNumber,
  }) = _SActiveUserProfileModel;

  factory ActiveUserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveUserProfileModelFromJson(json);

  static ActiveUserProfile toDomaine(ActiveUserProfileModel model) {
    return ActiveUserProfile(
      adresse: model.adresse.getOrEmpty(),
      autherKey: model.autherKey.getOrEmpty(),
      email: model.email.getOrEmpty(),
      name: model.name.getOrEmpty(),
      serviceLibelle: model.serviceLibelle.getOrEmpty(),
      specialite: model.specialite.getOrEmpty(),
      telephone: model.telephone.getOrEmpty(),
      user: model.user.getOrEmpty(),
      averageBed: model.averageBed.getOrEmpty(),
      description: model.description.getOrEmpty(),
      option: model.option.getOrEmpty(),
      roomNumber: model.roomNumber.getOrEmpty(),
    );
  }
}
