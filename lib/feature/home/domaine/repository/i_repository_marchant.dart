import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';

import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:dartz/dartz.dart';

abstract class IRepositoryMarchant {
  // <------>> permet de recuperer la liste des profile actif
  Future<Either<Failure, List<ActiveUserProfile>>> getActifProfileList(
    RequestFilterProfile request,
  );

  // permet de liker un profile
  Future<Either<Failure, String?>> like(RequestLike request);

  // permet de disliker une profile
  Future<Either<Failure, String?>> dislike(RequestLike request);

  // <----->> permet de récupérer les likes d’un post
  Future<Either<Failure, List<LikeProfileResponse>>> getLike(
    NoParams params,
  );

  // <----->> permet de liker un post
  Future<Either<Failure, String?>> likePost(RequestLikePost request);

  // <----->> permet de disLiker un post
  Future<Either<Failure, String?>> disLikePost(RequestLikePost request);
}
