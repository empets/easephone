import 'package:com.example.epbomi/core/data_process/failure.dart';

import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:dartz/dartz.dart';

abstract class IRepositoryMarchant {
  // cette mehode permet d'obtenir les information sur un compte actf
  Future<Either<Failure, List<ActiveUserProfile>>>
  getActifUserInformationAboutCompte();
}
