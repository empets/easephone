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
    required String? userId,
    required String? averageBed,
    required String? description,
    required String? option,
    required String? roomNumber,
    required String? facebookLinck,
    required String? lat,
    required String? long,
    required String? whatsappContact,
    required String? formOne,
    required String? formTwo,
    required String? formTherd,
    required String? file,
    required String? profileImage,
    required String? prixMax,
    required String? prixMin,
    required String? typeHome,
    required String? recto,
    required String? verso,
    required String? formFive,

    // required String? formTherd,
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
      userId: model.userId.getOrEmpty(),
      averageBed: model.averageBed.getOrEmpty(),
      description: model.description.getOrEmpty(),
      option: model.option.getOrEmpty(),
      roomNumber: model.roomNumber.getOrEmpty(),
      facebookLinck: model.facebookLinck.getOrEmpty(),
      lat: model.lat.getOrEmpty(),
      long: model.long.getOrEmpty(),
      whatsappContact: model.whatsappContact.getOrEmpty(),
      formOne: model.formOne.getOrEmpty(),
      formTwo: model.formTwo.getOrEmpty(),
      formTherd: model.formTherd.getOrEmpty(),
      file: model.file.getOrEmpty(),
      profileImage: model.profileImage.getOrEmpty(),
      prixMax: model.prixMax.getOrEmpty(),
      prixMin: model.prixMin.getOrEmpty(),
      typeHome: model.typeHome.getOrEmpty(),
      recto: model.recto.getOrEmpty(),
      verso: model.verso.getOrEmpty(),
      formFive: model.formFive.getOrEmpty(),

      // formTherd: model.formTherd.getOrEmpty(),
    );
  }
}

@freezed
abstract class LikeProfileResponseModel with _$LikeProfileResponseModel {
  factory LikeProfileResponseModel({
    required String? likeId,
    required String? userId,
    required String? postId,
    required String? type,
    required String? date,
  }) = _SLikeProfileResponseModel;

  factory LikeProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LikeProfileResponseModelFromJson(json);

  static LikeProfileResponse toDomaine(LikeProfileResponseModel model) {
    return LikeProfileResponse(
      likeId: model.likeId.getOrEmpty(),
      userId: model.userId.getOrEmpty(),
      postId: model.postId.getOrEmpty(),
      type: model.type.getOrEmpty(),
      date: model.date.getOrEmpty(),
    );
  }
}
