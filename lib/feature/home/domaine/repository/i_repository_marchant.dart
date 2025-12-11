import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:dartz/dartz.dart';

abstract class IRepositoryMarchant {
  Future<Either<Failure, String?>> createCompte(RequestAuthen request);
}
