import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';

abstract class FirebaseRemoteService {
  Future<FirebaseResult<String?>> authentificationSignUp(
    RequestAuthentificationSignIntificationSignIntificationSignUp params,
  );
  Future<FirebaseResult<String?>> userAutheUpdateKey(
    RequestAuthentificationSignIntificationSignInUpdateKey params,
  );

  Future<FirebaseResult<String?>> authentificationSignIn(
    RequestAuthentificationSignIntificationSignIn params,
  );
  Future<FirebaseResult<String?>> createCompte(
    RequestCreateCompteHomeInformation params,
  );
  Future<FirebaseResult<String?>> createCompteUpdateFormToher(
    RequestCreateCompteHeber params,
  );

  // <----->> cette methode permet de recuperer le profile de l'utilisateur
  Future<FirebaseResult<ProfileUserModel>> getProfile();
  Future<FirebaseResult<String>> uploadImage(CreatCompteImage params);

  // <----->> cette methode permet de recuperer la liste des utilisateurs
  Future<FirebaseResult<List<ProfileUserModel>>> getProfileList();

  Future<FirebaseResult<String?>> uploadprofileImage(CreatProfileImage params);

  Future<FirebaseResult<String?>> formFiveUpdate(RequestFormsCheckFile params);

  Future<FirebaseResult<String?>> uploadAdministrativeFile(
    RequestFormsCheckFile params,
  );

  Future<FirebaseResult<String?>> recuperationAuthentification(
    RequestAuthentificationSignIntificationSignIntificationSignUp params,
  );
}
