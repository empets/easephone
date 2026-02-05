import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/repositorie/I_repository_authen.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CreateCompteCheckFile implements UseCase<String?, RequestFormsCheckFile> {
  CreateCompteCheckFile(this.repository);

  final IRepositoryAuthen repository;

  @override
  Future<Either<Failure, String?>> call(RequestFormsCheckFile params) {
    return repository.uploadAdministrativeFile(params);
  }
}
