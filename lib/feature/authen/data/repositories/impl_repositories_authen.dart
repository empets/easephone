import 'dart:developer';
import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/real_time_authen/request_repository.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/repositorie/I_repository_authen.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart' as shareData;

@LazySingleton(as: IRepositoryAuthen)
class RepositoriesAuthenImple implements IRepositoryAuthen {
  RepositoriesAuthenImple({required this.firebaseRemoteService});
  final FirebaseRemoteService firebaseRemoteService;
 
  // <----->> cette methode permet de creer un compte
  @override
  Future<Either<Failure, String?>> authentificationSignUp(
    RequestAuthentificationSignIntificationSignIntificationSignUp request,
  ) async {
    final response = await firebaseRemoteService.authentificationSignUp(
      request,
    );

    if (response is FirebaseSuccess<String?>) {
      final shared = await shareData.SharedPreferences.getInstance();
      await shared.setString('user_section', response.data ?? '');
      await shared.setString(
        'user_actif_by_change_profile_photo',
        response.data ?? '',
      );
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  // <----->> cette methode permet de se connecter
  @override
  Future<Either<Failure, String?>> authentificationSignIn(
    RequestAuthentificationSignIntificationSignIn request,
  ) async {
    final response = await firebaseRemoteService.authentificationSignIn(
      request,
    );
    if (response is FirebaseSuccess<String?>) {
      final shared = await shareData.SharedPreferences.getInstance();

      await shared.setString('user_section', response.data ?? '');
      await shared.setString(
        'user_actif_by_change_profile_photo',
        response.data ?? '',
      );
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
  
  // <----->> cette methode permet de recuperer le profile de l'utilisateur
  @override
  Future<Either<Failure, String?>> recuperationAuthentification(
    RequestAuthentificationSignIntificationSignIntificationSignUp request,
  ) async {
    final response = await firebaseRemoteService.recuperationAuthentification(
      request,
    );
    if (response is FirebaseSuccess<String?>) {
      final shared = await shareData.SharedPreferences.getInstance();

      await shared.setString('user_section', response.data ?? '');
      await shared.setString(
        'user_actif_by_change_profile_photo',
        response.data ?? '',
      );
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }


  // <----->> cette methode permet de creer un compte actif Form 1
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

  // <----->> cette methode permet de creer un compte actif Form 2
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






  // <----->> cette methode permet de recuperer le profile de l'utilisateur
  @override
  Future<Either<Failure, ProfileUser>> getProfile() async {
    final response = await firebaseRemoteService.getProfile();

    if (response is FirebaseSuccess<ProfileUserModel>) {
      return Right(ProfileUserModel.toDomain(response.data));
    } else if (response is FirebaseError) {
      log(':::: $response');
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  @override
  Future<Either<Failure, String>> uploadImage(CreatCompteImage params) async {
    final response = await firebaseRemoteService.uploadImage(params);
    if (response is FirebaseSuccess<String>) {
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }


  // <----->> cette methode permet de recuperer la liste des utilisateurs
  @override
  Future<Either<Failure, List<ProfileUser>>> getProfileList() async {
    final response = await firebaseRemoteService.getProfileList();
    if (response is FirebaseSuccess<List<ProfileUserModel>>) {
      return Right(response.data.map(ProfileUserModel.toDomain).toList());
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  // <----->> cette methode permet de mettre a jour le profile de l'utilisateur
  @override
  Future<Either<Failure, String?>> uploadprofileImage(
    CreatProfileImage params,
  ) async {
    final response = await firebaseRemoteService.uploadprofileImage(params);
    if (response is FirebaseSuccess<String>) {
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

  // <----->> cette methode permet de mettre a jour le formulaire 5
  @override
  Future<Either<Failure, String?>> formFiveUpdate(
    RequestFormsCheckFile request,
  ) async {
    final response = await firebaseRemoteService.formFiveUpdate(request);
    if (response is FirebaseSuccess<String?>) {
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }
 
  @override
  Future<Either<Failure, String?>> uploadAdministrativeFile(
    RequestFormsCheckFile params,
  ) async {
    final response = await firebaseRemoteService.uploadAdministrativeFile(
      params,
    );
    if (response is FirebaseSuccess<String>) {
      return Right(response.data);
    } else if (response is FirebaseError) {
      return Left(Failure(message: response.toString()));
    }
    return Left(Failure(message: "Erreur inconnue"));
  }

 }
