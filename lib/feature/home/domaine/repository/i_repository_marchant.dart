import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';

import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:dartz/dartz.dart';

abstract class IRepositoryMarchant {
  // cette mehode permet d'obtenir les information sur un compte actf
  Future<Either<Failure, List<ActiveUserProfile>>>
  getActifUserInformationAboutCompte();

  // permet de liker un profile
  Future<Either<Failure, String?>> like(RequestLike request);

  // permet de disliker une profile
  Future<Either<Failure, void>> dislike(RequestLike request);
}
