import 'dart:developer';
import 'dart:io';
import 'package:com.example.epbomi/core/data_process/request/request.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart' as databaseReference;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_storage/firebase_storage.dart';

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

@LazySingleton(as: FirebaseRemoteService)
class ImplFirebaseRemoteService implements FirebaseRemoteService {
  ImplFirebaseRemoteService({required this.db});

  final databaseReference.DatabaseReference db;
  late String userKey = '';
  late String authKey = '';

  @override
  Future<FirebaseResult<String?>> userAuthen(RequestAuthen params) async {
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
        final request = Request<RequestAuthen>(
          data: params.toJson(),
          user: "",
          serviceLibelle: 'serviceLibelle',
        );
        log("data ::::  $request");

        // 2) Créer une nouvelle entrée
        final ref = db.child('users').push();
        authKey = ref.key.toString();

        // 3) Sauvegarder dans Firebase (en convertissant en Map)
        await ref.set(request.data);

        userAutheUpdateKey(RequestAuthenUpdateKey(userId: authKey));

        // 4) Retourner le key généré
        return FirebaseSuccess(ref.key);
      }
    } catch (e) {
      log("🔥 Firebase ERROR exise → $e");
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> userAutheUpdateKey(
    RequestAuthenUpdateKey params,
  ) async {
    try {
      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
      };
      // 2) Créer une nouvelle entrée
      await db.child('users/${params.userId}').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(authKey);
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> signIn(RequestAuthen params) async {
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

  @override
  Future<FirebaseResult<String?>> createCompte(
    RequestCreateCompteHomeInformation params,
  ) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final localUserSection = sharedPreferences.getString('user_section');

    //  final sharedPreferences = await SharedPreferences.getInstance();
    final localUserSections = sharedPreferences.getString(
      'user_actif_by_change_profile_photo',
    );

    try {
      if (localUserSections != null && localUserSections.isNotEmpty) {
        final request = Request<RequestCreateCompteHomeInformation>(
          data: params.toJson(),
          user: localUserSection.toString(),
          serviceLibelle: '',
        );

        // 2) Créer une nouvelle entrée
        final ref = db.child('hotel').push();

        // 3) Sauvegarder dans Firebase (en convertissant en Map)
        await ref.set(request.data);

        userKey = ref.key.toString();
        return FirebaseSuccess(localUserSection);
      }

      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
        'user': localUserSection.toString(),
      };
      // 2) Créer une nouvelle entrée
      await db.child('hotel/$localUserSection').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(localUserSection);
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> createCompteUpdateFormToher(
    RequestCreateCompteHeber params,
  ) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final localUserSectionss = sharedPreferences.getString('user_section');
    final localUserSection = sharedPreferences.getString(
      'user_actif_by_change_profile_photo',
    );

    try {
      if (localUserSection != null && localUserSection.isNotEmpty) {
        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'user': localUserSection.toString(),
        };
        // 2) Créer une nouvelle entrée
        await db.child('hotel/$localUserSection').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(localUserSection);
      }

      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
        'user': localUserSection.toString(),
      };
      // 2) Créer une nouvelle entrée
      await db.child('hotel/$localUserSectionss').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(localUserSectionss);
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<ProfileUserModel>> getProfileUser() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final localUserSection = sharedPreferences.getString('user_section');

    try {
      final response = await db.child('users/$localUserSection').get();
      log(',,, ${response.value}');
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
      log(':: information:${e.runtimeType.toString()}');
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
      log('service ------>>> $reponse');

      saveImageUrl(
        params.copyWith(file: reponse),
        path: 'hotel',
        userId: params.userId,
      );
      return FirebaseSuccess(reponse);
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }

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
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('user_actif_by_change_profile_photo', userId);
  }

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
      log('service ------>>> $reponse');

      saveImageUrl(
        params.copyWith(profileImage: reponse),
        path: 'hotel',
        userId: params.userId,
      );
      saveImageUrl(
        params.copyWith(profileImage: reponse),
        path: 'users',
        userId: params.userId,
      );
      return FirebaseSuccess(reponse);
    } catch (e) {
      log('************$e');
      return FirebaseError(e.toString());
    }
  }
}
