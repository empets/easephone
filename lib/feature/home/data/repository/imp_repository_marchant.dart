import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/home/data/domaine/home_response_model.dart';
import 'package:com.example.epbomi/feature/home/data/service/firebase/remote.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/repository/i_repository_marchant.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRepositoryMarchant)
class ImpRepositoryMarchant implements IRepositoryMarchant {
  ImpRepositoryMarchant({required this.marchanServiceFirebase});

  MarchanServiceFirebase marchanServiceFirebase;

  // cette mehode permet d'obtenir les information sur un compte actf
  @override
  Future<Either<Failure, List<ActiveUserProfile>>>
  getActifUserInformationAboutCompte() async {
    final response = await marchanServiceFirebase.getActifUserInformationAboutCompte();
    if (response is FirebaseSuccess<List<ActiveUserProfileModel>>) {
      return Right(
        response.data.map(ActiveUserProfileModel.toDomaine).toList(),
      );
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
}
