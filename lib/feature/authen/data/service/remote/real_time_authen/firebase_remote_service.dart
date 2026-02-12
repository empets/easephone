import 'dart:developer';
import 'dart:io';
import 'package:com.example.epbomi/core/data_process/request/request.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/real_time_authen/request_repository.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart' as databaseReference;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shared_preferences/shared_preferences.dart' as shareData;

// @LazySingleton(as: SecureStorageData<String>)
@LazySingleton(as: FirebaseRemoteService)
class ImplFirebaseRemoteService implements FirebaseRemoteService {
  ImplFirebaseRemoteService({required this.db});

  final databaseReference.DatabaseReference db;

  late String userKey = '';
  late String authKey = '';

  /*
  Cette methode permet d'enregister un nouvelle utilisateur
  */
  @override
  Future<FirebaseResult<String?>> authentificationSignUp(
    RequestAuthentificationSignIntificationSignIntificationSignUp params,
  ) async {
    try {
      final snapShot = await db
          .child('users')
          .orderByChild('email')
          .equalTo(params.email)
          .get();

      if (snapShot.exists) {
        return FirebaseError("Cet utilisateur existe deja");
      } else {
        // 1) Construire l'objet Request
        final request =
            Request<
              RequestAuthentificationSignIntificationSignIntificationSignUp
            >(
              data: params.toJson(),
              user: "",
              serviceLibelle: 'serviceLibelle',
            );
        log("data ::::  $request");

        // 2) Créer une nouvelle entré ou table
        final ref = db.child('users').push();
        authKey = ref.key.toString();

        // 3) Sauvegarder dans Firebase (en convertissant en Map)
        await ref.set(request.data);

        userAutheUpdateKey(
          RequestAuthentificationSignIntificationSignInUpdateKey(
            userId: ref.key.toString(),
          ),
        );
        // 4) Retourner le key généré
        return FirebaseSuccess(ref.key);
      }
    } catch (e) {
      log("🔥 Firebase ERROR exise → $e");
      return FirebaseError(e.toString());
    }
  }

  /*
  Cette methode permet d'enregister la 
  clé primaire géneré  lors de l'authentification
  elle est apeller dans la Methode --->> authentificationSignUp() 
  */
  @override
  Future<FirebaseResult<String?>> userAutheUpdateKey(
    RequestAuthentificationSignIntificationSignInUpdateKey params,
  ) async {
    try {
      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
      };
      // 2) Créer une nouvelle entrée
      await db.child('users/${params.userId}').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(params.userId);
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }

  /*
  Cette methode permet de se re-authentifier
  */
  @override
  Future<FirebaseResult<String?>> authentificationSignIn(
    RequestAuthentificationSignIntificationSignIn params,
  ) async {
    try {
      final snapShot = await db
          .child('users')
          .orderByChild('email')
          .equalTo(params.email)
          .get();

      if (!snapShot.exists) {
        return FirebaseError("Email introuvable");
      }

      // snapshot.value = { userId123: {email:..., password:...} }
      final data = snapShot.value as Map<dynamic, dynamic>;
      final entry = data.entries.first;

      final userId = entry.key;
      final user = entry.value as Map;

      // vérification du mot de passe localement
      if (user["password"] != params.password) {
        return FirebaseError("Mot de passe incorrect");
      }

      return FirebaseSuccess<String?>(userId);
    } catch (e) {
      log("🔥 Firebase ERROR exise → $e");
      return FirebaseError(e.toString());
    }
  }

  /*
  Cette methode permet de crée un nouvelle profile
  */
  @override
  Future<FirebaseResult<String?>> createCompte(
    RequestCreateCompteHomeInformation params,
  ) async {
    final shared = await shareData.SharedPreferences.getInstance();

    final localUserSections = shared.getString(
      'user_actif_by_change_profile_photo',
    );

    try {
      if (localUserSections == null && localUserSections!.trim().isEmpty) {
        final request = Request<RequestCreateCompteHomeInformation>(
          data: params.toJson(),
          user: localUserSections,
          serviceLibelle: '',
        );

        // 2) Créer une nouvelle entrée
        final ref = db.child('hotel').push();

        // 3) Sauvegarder dans Firebase (en convertissant en Map)
        await ref.set(request.data);
        await shared.setString(
          'user_actif_by_change_profile_photo',
          ref.key.toString(),
        );

        return FirebaseSuccess(localUserSections);
      } else {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'userId': localUserSections.toString(),
        };

        // 2) Créer une nouvelle entrée
        await db.child('hotel/$localUserSections').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(localUserSections);
      }
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> createCompteUpdateFormToher(
    RequestCreateCompteHeber params,
  ) async {
    final shared = await shareData.SharedPreferences.getInstance();

    final localUserSection = shared.getString(
      'user_actif_by_change_profile_photo',
    );

    try {
      if (localUserSection != null && localUserSection.isNotEmpty) {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'userId': localUserSection.toString(),
        };
        // 2) Créer une nouvelle entrée
        await db.child('hotel/$localUserSection').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(localUserSection);
      }

      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
        'userId': localUserSection.toString(),
      };
      // 2) Créer une nouvelle entrée
      await db.child('hotel/$localUserSection').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(localUserSection);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

  /*  permet de recuper le profile d'utilisateur
  */
  @override
  Future<FirebaseResult<ProfileUserModel>> getProfileUser() async {
    final shared = await shareData.SharedPreferences.getInstance();
    final localUserSection = shared.getString('user_section');

    try {
      final response = await db.child('users/$localUserSection').get();
      final data = Map<String, dynamic>.from(response.value as Map);

      if (response.exists) {
        final firebaseResult = ProfileUserModel.fromJson(data);
        return FirebaseSuccess(firebaseResult);
      } else {
        return FirebaseError("une erreur est survenue");
      }
    } catch (e) {
      return FirebaseError('====${e.toString()}');
    }
  }

  @override
  Future<FirebaseResult<List<ProfileUserModel>>> getProfileUserList() async {
    try {
      final snapshot = await db.child('users').get();
      if (!snapshot.exists || snapshot.value == null) {
        return FirebaseError("Aucune donnée trouvée");
      }
      final userProfile = (snapshot.value as Map).values.map((e) {
        return ProfileUserModel.fromJson(Map<String, dynamic>.from(e));
      }).toList();

      return FirebaseSuccess(userProfile);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String>> uploadImage(CreatCompteImage params) async {
    try {
      final ref = FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child('${params.userId}${DateTime.timestamp()}.jpg');

      await ref.putFile(File(params.file));

      final reponse = await ref.getDownloadURL();

      saveImageUrl(
        params.copyWith(file: reponse),
        path: 'hotel',
        userId: params.userId,
      );
      return FirebaseSuccess(reponse);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

  /*
  Cette methode permet de juste d'enregister la 
  photo de profile et en local id génerer  
  */
  Future<void> saveImageUrl<T extends Object>(
    T params, {
    required String path,
    required String userId,
  }) async {
    // CreatCompteImage
    final Map<String, dynamic> updates = {
      ...(params as dynamic).toJson(), // nouveaux champs simples
      'serviceLibelle': '',
    };

    await db.child('$path/$userId').update(updates);

    // final shared = await SharedPreferences.getInstance();
    // sharedPreferences.setString('user_actif_by_change_profile_photo', userId);
  }

  /*
  Cette methode permet de update la photo de profile a 
  la fois dans la table User et hotel  
  */
  @override
  Future<FirebaseResult<String?>> uploadprofileImage(
    CreatProfileImage params,
  ) async {
    try {
      final ref = FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child('${params.userId}${DateTime.timestamp()}.jpg');

      await ref.putFile(File(params.profileImage));

      final reponse = await ref.getDownloadURL();

      await saveImageUrl(
        params.copyWith(profileImage: reponse),
        path: 'hotel',
        userId: params.userId,
      );
      await saveImageUrl(
        params.copyWith(profileImage: reponse),
        path: 'users',
        userId: params.userId,
      );
      final shared = await shareData.SharedPreferences.getInstance();
      shared.setString('user_actif_by_change_profile_photo', params.userId);

      return FirebaseSuccess(reponse);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> formFiveUpdate(
    RequestFormsCheckFile params,
  ) async {
    final shared = await shareData.SharedPreferences.getInstance();

    final localUserSection = shared.getString(
      'user_actif_by_change_profile_photo',
    );

    try {
      if (localUserSection != null && localUserSection.isNotEmpty) {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'userId': localUserSection.toString(),
        };
        // 2) Créer une nouvelle entrée
        await db.child('hotel/$localUserSection').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(localUserSection);
      }

      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
        'userId': localUserSection.toString(),
      };
      // 2) Créer une nouvelle entrée
      await db.child('hotel/$localUserSection').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(localUserSection);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> uploadAdministrativeFile(
    RequestFormsCheckFile params,
  ) async {
    try {
      final ref = FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child('verso${params.userId}${DateTime.timestamp()}.jpg');

      final refs = FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child('recto${params.userId}${DateTime.timestamp()}.jpg');

      final ref3 = FirebaseStorage.instance
          .ref()
          .child('profile_images')
          .child('recto${params.userId}${DateTime.timestamp()}.jpg');

      await ref.putFile(File(params.recto));
      await refs.putFile(File(params.verso));
      await ref3.putFile(File(params.verso));

      final reponse = await ref.getDownloadURL();
      final reponses = await refs.getDownloadURL();
      final reponses3 = await ref3.getDownloadURL();

      saveImageUrl(
        params.copyWith(
          recto: reponse,
          verso: reponses,
          attestation: reponses3,
        ),
        path: 'hotel',
        userId: params.userId,
      );
      return FirebaseSuccess(reponses);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> recuperationAuthentification(
    RequestAuthentificationSignIntificationSignIntificationSignUp params,
  ) async {
    try {
      log('=====>> ${params.remenber}');
      final snapShot = await db
          .child('users')
          .orderByChild('remenber')
          .equalTo(params.remenber)
          .get();

      if (snapShot.exists) {
        final data = Map<String, dynamic>.from(snapShot.value as Map);
        final firebaseResult = ProfileUserModel.fromJson(data);
        return FirebaseSuccess(firebaseResult.userId);
      } else {
        return FirebaseError("Aucune infromation");
      }
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }
}
