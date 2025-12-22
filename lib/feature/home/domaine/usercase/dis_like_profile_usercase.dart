import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:com.example.epbomi/feature/home/domaine/repository/i_repository_marchant.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class DisLikeProfileUsercase
    implements UseCase<void, RequestLike> {
  DisLikeProfileUsercase(this.repository);

  final IRepositoryMarchant repository;

  @override
  Future<Either<Failure, void>> call(
    RequestLike params,
  ){
    return repository.dislike(params);
  }
}