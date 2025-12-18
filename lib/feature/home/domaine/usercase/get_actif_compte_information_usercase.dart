import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/repository/i_repository_marchant.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class GetActifCompteInformationUsercase
    implements UseCase<List<ActiveUserProfile>, NoParams> {
  GetActifCompteInformationUsercase(this.repository);

  final IRepositoryMarchant repository;

  @override
  Future<Either<Failure, List<ActiveUserProfile>>> call(
    NoParams params,
  ){
    return repository.getActifUserInformationAboutCompte();
  }
}


