import 'dart:developer';
import 'dart:io';
import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/real_time_authen/firebase_remote_service.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/repositorie/I_repository_authen.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IRepositoryAuthen)
class RepositoriesAuthenImple implements IRepositoryAuthen {
  RepositoriesAuthenImple({required this.firebaseRemoteService});
  final FirebaseRemoteService firebaseRemoteService;


  @override
  Future<Either<Failure, String?>> userAuthen(RequestAuthen request) async {
    final response = await firebaseRemoteService.userAuthen(request);

    if (response is FirebaseSuccess<String?>) {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString('user_section', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String?>> signIn(RequestAuthen request) async {
    final response = await firebaseRemoteService.signIn(request);
    if (response is FirebaseSuccess<String?>) {
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString('user_section', response.data ?? '');
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String?>> createCompte(
    RequestCreateCompteHomeInformation request,
  ) async {
    final response = await firebaseRemoteService.createCompte(request);
    if (response is FirebaseSuccess<String?>) {
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String?>> createCompteUpdateFormToher(
    RequestCreateCompteHeber request,
  ) async {
    final response = await firebaseRemoteService.createCompteUpdateFormToher(
      request,
    );
    if (response is FirebaseSuccess<String?>) {
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, ProfileUser>> getProfileUser() async {
    final response = await firebaseRemoteService.getProfileUser();

    if (response is FirebaseSuccess<ProfileUserModel>) {
      return Right(ProfileUserModel.toDomain(response.data));
    } else if (response is FirebaseError) {
      log(':::: $response');
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String>> uploadImage(CreatCompteImage params) async{

      final response = await firebaseRemoteService.uploadImage(
      params
    );
    if (response is FirebaseSuccess<String>) {
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));

   
  }
  



}
