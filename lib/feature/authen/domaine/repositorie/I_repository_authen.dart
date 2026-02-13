import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:dartz/dartz.dart';

abstract class IRepositoryAuthen {

  //--->cette methode permet de créer l'utilisateur
  Future<Either<Failure, String?>> authentificationSignUp(
    RequestAuthentificationSignIntificationSignIntificationSignUp request,
  );


  //--->>cette methode permet de vérifier si l'utilisateur existe deja
  Future<Either<Failure, String?>> authentificationSignIn(
    RequestAuthentificationSignIntificationSignIn request,
  );

  //creation de compte marchant
  Future<Either<Failure, String?>> createCompte(
    RequestCreateCompteHomeInformation request,
  );

  //creation de compte marchant
  Future<Either<Failure, String?>> createCompteUpdateFormToher(
    RequestCreateCompteHeber request,
  );

  // <----->> cette methode permet de recuperer la liste des utilisateurs
  Future<Either<Failure, List<ProfileUser>>> getProfileList();

  // <----->> cette methode permet de mettre a jour le profile de l'utilisateur
  Future<Either<Failure, String>> uploadImage(CreatCompteImage params);

  // <----->> cette methode permet de mettre a jour le profile de l'utilisateur actif
  Future<Either<Failure, String?>> uploadprofileImage(CreatProfileImage params);

  // <----->> cette methode permet de mettre a jour le formulaire 5
  Future<Either<Failure, String?>> formFiveUpdate(
    RequestFormsCheckFile request,
  );

  // <----->> cette methode permet de mettre a jour le formulaire 6 administratif
  Future<Either<Failure, String?>> uploadAdministrativeFile(
    RequestFormsCheckFile params,
  );


   // <----->> creation permet de recuperer le profile de l'utilisateur
   Future<Either<Failure, ProfileUser>> getProfile();


    // <----->> cette methode permet de verifier si l'utilisateur existe via le numero de secret
  Future<Either<Failure, String?>> recuperationAuthentification(
    RequestAuthentificationSignIntificationSignIntificationSignUp request,
  );
}
