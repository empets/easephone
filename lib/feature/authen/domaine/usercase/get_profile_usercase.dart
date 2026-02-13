import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/repositorie/I_repository_authen.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetProfileUsercase
    implements UseCase<ProfileUser, NoParams> {
  GetProfileUsercase(this.repository);

  final IRepositoryAuthen repository;

  @override
  Future<Either<Failure, ProfileUser>> call(NoParams noParams) {
    return repository.getProfile();
  }
}
