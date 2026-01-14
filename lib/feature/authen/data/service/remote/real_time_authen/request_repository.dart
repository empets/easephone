import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';

abstract class FirebaseRemoteService {
  Future<FirebaseResult<String?>> userAuthen(RequestAuthen params);
  Future<FirebaseResult<String?>> userAutheUpdateKey(
    RequestAuthenUpdateKey params,
  );

  Future<FirebaseResult<String?>> signIn(RequestAuthen params);
  Future<FirebaseResult<String?>> createCompte(
    RequestCreateCompteHomeInformation params,
  );
  Future<FirebaseResult<String?>> createCompteUpdateFormToher(
    RequestCreateCompteHeber params,
  );

  Future<FirebaseResult<ProfileUserModel>> getProfileUser();
  Future<FirebaseResult<String>> uploadImage(CreatCompteImage params);

  Future<FirebaseResult<List<ProfileUserModel>>> getProfileUserList();

  Future<FirebaseResult<String?>> uploadprofileImage(CreatProfileImage params);
}
