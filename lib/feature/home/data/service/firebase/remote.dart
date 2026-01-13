import 'dart:developer';
import 'package:com.example.epbomi/core/data_process/request/request.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/home/data/domaine/home_response_model.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart' as databaseRf;

abstract class MarchanServiceFirebase {
  // cette mehode permet d'obtenir les information sur un compte actf
  Future<FirebaseResult<List<ActiveUserProfileModel>>>
  getActifUserInformationAboutCompte();

  Future<FirebaseResult<String?>> likeProfile(RequestLike params);

  // permet de disliker une profile
  Future<FirebaseResult<String?>> dislike(RequestLike params);

  Future<FirebaseResult<List<LikeResponseModel>>> getLikeNumber();
}

@LazySingleton(as: MarchanServiceFirebase)
class ImpleMarchantServiceFirebase implements MarchanServiceFirebase {
  ImpleMarchantServiceFirebase({required this.db});

  final databaseRf.DatabaseReference db;
  late String? like = '';

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
    try {
      final response = await db
          .child('likeProfile')
          .orderByChild('likeId')
          .equalTo(params.likeId)
          .get();

      log('message====== $response');

      if (response.exists) {
        log('message====== $response');
        return dislike(params);
      } else {
        // 1) Construire l'objet Request
        final request = Request<RequestLike>(
          data: params.toJson(),
          user: "",
          serviceLibelle: 'serviceLibelle',
        );
        // 2) Créer une nouvelle entrée
        final ref = db.child('likeProfile').push();

        // 3) Sauvegarder dans Firebase (en convertissant en Map)
        await ref.set(request.data);
        like = ref.key;

        final Map<String, dynamic> updates = {
          ...params
              .copyWith(likeId: ref.key)
              .toJson(), // nouveaux champs simples
          'serviceLibelle': '',
        };
        // 2) Créer une nouvelle entrée
        await db.child('likeProfile/${ref.key}').update(updates);

        // 4) Retourner le key généré
        return FirebaseSuccess(ref.key);
      }
    } catch (e) {
      log("🔥 Firebase ERROR exise → $e");
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> dislike(RequestLike params) async {
    try {
      final response = await db
          .child('likeProfile')
          .orderByChild('likeId')
          .equalTo(params.likeId)
          .get();

      if (response.exists) {
        log("🔥 vous avez jamais liker se profile $response");

        await db.child('likeProfile/${params.likeId}').remove();

        return FirebaseSuccess(like);
      } else {
        return FirebaseError("Vous avez jamais liker se profile");
      }
    } catch (e) {
      log("🔥 Firebase ERROR dislike → $e");
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<List<LikeResponseModel>>> getLikeNumber() async {
    try {
      final snapshot = await db.child('likeProfile').get();
      if (!snapshot.exists || snapshot.value == null) {
        return FirebaseError("Aucune donnée trouvée");
      }
      final userProfile = (snapshot.value as Map).values.map((e) {
        return LikeResponseModel.fromJson(Map<String, dynamic>.from(e));
      }).toList();

      return FirebaseSuccess(userProfile);
    } catch (e) {
      log(':: information:${e.runtimeType.toString()}');
      return FirebaseError(e.toString());
    }
  }
}
