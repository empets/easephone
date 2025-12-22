import 'dart:developer';
import 'package:com.example.epbomi/core/data_process/request/request.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/home/data/domaine/home_response_model.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart' as databaseRf;
import 'package:shared_preferences/shared_preferences.dart';

abstract class MarchanServiceFirebase {
  // cette mehode permet d'obtenir les information sur un compte actf
  Future<FirebaseResult<List<ActiveUserProfileModel>>>
  getActifUserInformationAboutCompte();

  Future<FirebaseResult<String?>> likeProfile(RequestLike params);

  // permet de disliker une profile
  Future<FirebaseResult<void>> dislike(RequestLike params);
}

@LazySingleton(as: MarchanServiceFirebase)
class ImpleMarchantServiceFirebase implements MarchanServiceFirebase {
  ImpleMarchantServiceFirebase({required this.db});

  final databaseRf.DatabaseReference db;

  @override
  Future<FirebaseResult<List<ActiveUserProfileModel>>>
  getActifUserInformationAboutCompte() async {
    try {
      final snapshot = await db.child('hotel').get();

      final flatUsers = (snapshot.value as Map).values.map((e) {
        final m = Map<String, dynamic>.from(e as Map);
        return {...m, ...Map<String, dynamic>.from(m.remove('herBer') ?? {})};
      }).toList();

      log('data:::::::  $flatUsers');

      if (!snapshot.exists || snapshot.value == null) {
        return FirebaseError("Aucune donnée trouvée");
      }
      final userProfile = (snapshot.value as Map).values.map((e) {
        return ActiveUserProfileModel.fromJson(Map<String, dynamic>.from(e));
      }).toList();

      return FirebaseSuccess(userProfile);
    } catch (e) {
      log(':: information:${e.runtimeType.toString()}');
      return FirebaseError(e.runtimeType.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> likeProfile(RequestLike params) async {
    final snapShot = await db
        .child('likeProfile')
        .orderByChild('userId')
        .equalTo(params.userId)
        .get();

    try {
      if (snapShot.exists) {
        return FirebaseError("Vous avez deja liker se profile");
      } else {
        // 1) Construire l'objet Request
        final request = Request<RequestLike>(
          data: params.toJson(),
          user: "",
          serviceLibelle: 'serviceLibelle',
        );
        log("data ::::  $request");

        // 2) Créer une nouvelle entrée
        final ref = db.child('likeProfile').push();

        // 3) Sauvegarder dans Firebase (en convertissant en Map)
        await ref.set(request.data);

        // 4) Retourner le key généré
        return FirebaseSuccess(ref.key);
      }
    } catch (e) {
      log("🔥 Firebase ERROR exise → $e");
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<void>> dislike(RequestLike params) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final localUserSection = sharedPreferences.getString('user_section');

    final snapShot = await db
        .child('likeProfile/$localUserSection')
        .orderByChild('userId')
        .equalTo(params.userId)
        .get();

    log('message:::::n. $snapShot');
    try {
      if (!snapShot.exists) {
        return FirebaseError("Vous n'avez pas liké ce profil");
      }

      db.child('likeProfile/$localUserSection').remove();

      return FirebaseError("Like non trouvé");
    } catch (e) {
      log("🔥 Firebase ERROR dislike → $e");
      return FirebaseError(e.toString());
    }
  }
}
