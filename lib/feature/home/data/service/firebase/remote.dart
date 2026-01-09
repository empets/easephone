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
          .orderByChild('userId')
          .equalTo(params.userId)
          .get();

      if (response.exists) {
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
    final sharedPreferences = await SharedPreferences.getInstance();
    final localUserSection = sharedPreferences.getString('user_section');

    try {
      final response = await db
          .child('likeProfile')
          .orderByChild('userId')
          .equalTo(params.userId)
          .get();

      if (response.exists) {
        log("🔥 vous avez jamais liker se profile");

        final Map<String, dynamic> updates = {
          ...params.toJson(), // nouveaux champs simples
          'serviceLibelle': '',
          'user': localUserSection.toString(),
        };

        await db.child('likeProfile/$like').update(updates);

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
  Future<FirebaseResult<List<LikeResponseModel>>> getLikeNumber()  async{
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

  // @override
  // Stream<FirebaseResult<List<LikeResponseModel>>> getLikeNumber() {
  //   return db.child('likeProfile').onValue.map((event) {
  //     try {
  //       final snapshot = event.snapshot;

  //       if (!snapshot.exists || snapshot.value == null) {
  //         return FirebaseSuccess<List<LikeResponseModel>>([]);
  //       }

  //       final data = snapshot.value as Map<dynamic, dynamic>;

  //       final userProfile = data.values.map((e) {
  //         return LikeResponseModel.fromJson(Map<String, dynamic>.from(e));
  //       }).toList();

  //       return FirebaseSuccess<List<LikeResponseModel>>(userProfile);
  //     } catch (e) {
  //       log('🔥 Firebase stream error: $e');
  //       return FirebaseError<List<LikeResponseModel>>(e.toString());
  //     }
  //   });
  // }
}
