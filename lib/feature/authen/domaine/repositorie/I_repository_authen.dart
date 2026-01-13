
import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:dartz/dartz.dart';

abstract class IRepositoryAuthen {
  //cette methode permet de créer l'utilisateur

  Future<Either<Failure, String?>> userAuthen(RequestAuthen request);
  Future<Either<Failure, String?>> userAutheUpdateKey(RequestAuthenUpdateKey request);


  //cette methode permet de vérifier si l'utilisateur existe deja
  Future<Either<Failure, String?>> signIn(RequestAuthen request);

  //creation de compte marchant
  Future<Either<Failure, String?>> createCompte(
    RequestCreateCompteHomeInformation request,
  );

  //creation de compte marchant
  Future<Either<Failure, String?>> createCompteUpdateFormToher(
    RequestCreateCompteHeber request,
  );

  //creation de compte marchant
  Future<Either<Failure, ProfileUser>> getProfileUser();
  Future<Either<Failure,List<ProfileUser>>> getProfileUserList();

  Future<Either<Failure, String>> uploadImage(CreatCompteImage params);
  Future<Either<Failure, String?>> uploadprofileImage(CreatProfileImage params);
  // current position
  //  Future<Either<Failure, LocationData?>> getLocation();

  //    Future< Either<Failure, Coordonne>> searchLocationByLatLng(
  //   double lat,
  //   double lon,
  // );
}
