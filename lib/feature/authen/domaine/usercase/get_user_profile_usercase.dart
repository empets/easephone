import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/repositorie/I_repository_authen.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetUserProfileUsercase
    implements UseCase<ProfileUser, NoParams> {
  GetUserProfileUsercase(this.repository);

  final IRepositoryAuthen repository;

  @override
  Future<Either<Failure, ProfileUser>> call(NoParams noParams) {
    return repository.getProfileUser();
  }
}
