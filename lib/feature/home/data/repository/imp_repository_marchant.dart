import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/home/domaine/repository/i_repository_marchant.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IRepositoryMarchant)
class ImpRepositoryMarchant implements IRepositoryMarchant {
  ImpRepositoryMarchant();

  @override
  Future<Either<Failure, String?>> createCompte(RequestAuthen request) {
    // TODO: implement createCompte
    throw UnimplementedError();
  }
}
