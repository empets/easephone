import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/home/data/domaine/home_response_model.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';

abstract class MarchanServiceFirebase {
  // permet de recuperer la liste des profile actif
  Future<FirebaseResult<List<ActiveUserProfileModel>>> getActifProfileList(
    RequestFilterProfile params,
  );

  // permet de liker une profile F
  Future<FirebaseResult<String?>> likeProfile(RequestLike params);

  // permet de disliker une profile F
  Future<FirebaseResult<String?>> dislike(RequestLike params);

  // permet de récupérer les likes d’un post
  Future<FirebaseResult<List<LikeProfileResponseModel>>> getLike(
    RequestLikePost params,
  );

  // <----->> permet de liker un post
  Future<FirebaseResult<String?>> likePost(RequestLikePost parms);

  // <----->> permet de disLiker un post
  Future<FirebaseResult<String?>> disLikePost(RequestLikePost params);
}
