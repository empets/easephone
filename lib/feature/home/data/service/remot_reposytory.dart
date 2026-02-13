import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/home/data/domaine/home_response_model.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';

abstract class MarchanServiceFirebase {
  // permet de recuperer la liste des profile actif
  Future<FirebaseResult<List<ActiveUserProfileModel>>>
  getActifProfileList(RequestFilterProfile params);

  // permet de liker une profile
  Future<FirebaseResult<String?>> likeProfile(RequestLike params);

  // permet de disliker une profile
  Future<FirebaseResult<String?>> dislike(RequestLike params);

  // permet de recuperer le nombre de like
  Future<FirebaseResult<List<LikeResponseModel>>> getLikeNumber();
}