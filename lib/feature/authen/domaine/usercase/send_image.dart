import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/repositorie/I_repository_authen.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateCoompteSendImageUsercase
    implements UseCase<String?, CreatCompteImage> {
  CreateCoompteSendImageUsercase(this.repository);

  final IRepositoryAuthen repository;

  @override
  Future<Either<Failure, String?>> call(CreatCompteImage params) {
    return repository.uploadImage(params);
  }
}

@lazySingleton
class CreateProfileImageUsercase
    implements UseCase<String?, CreatProfileImage> {
  CreateProfileImageUsercase(this.repository);

  final IRepositoryAuthen repository;

  @override
  Future<Either<Failure, String?>> call(CreatProfileImage params) {
    return repository.uploadprofileImage(params);
  }
}
