import 'dart:developer';
import 'package:com.example.epbomi/core/data_process/request/request.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/home/data/domaine/home_response_model.dart';
import 'package:com.example.epbomi/feature/home/data/service/remot_reposytory.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart' as databaseRf;

@LazySingleton(as: MarchanServiceFirebase)
class ImpleMarchantServiceFirebase implements MarchanServiceFirebase {
  ImpleMarchantServiceFirebase({required this.db});

  final databaseRf.DatabaseReference db;
  late String? like = '';

  // permet de recuperer la liste des profile actif
  @override
  Future<FirebaseResult<List<ActiveUserProfileModel>>> getActifProfileList(
    RequestFilterProfile params,
  ) async {
    try {
      if (params.filterIsActif) {
        final snapshot = await db.child('hotel').get();

        final result = snapshot.children.where((child) {
          final adresse = (child.child('adresse').value ?? '')
              .toString()
              .toLowerCase()
              .trim();

          return adresse.contains(params.adresse.toLowerCase().trim());
        }).toList();

        if (result.isNotEmpty) {
          if (!snapshot.exists || snapshot.value == null) {
            return FirebaseError("Aucune donnée trouvée");
          }
          final userProfile = (snapshot.value as Map).values.map((e) {
            return ActiveUserProfileModel.fromJson(
              Map<String, dynamic>.from(e),
            );
          }).toList();
          return FirebaseSuccess(userProfile);
        } else {
          final snapshot = await db.child('hotel').get();
          if (!snapshot.exists || snapshot.value == null) {
            return FirebaseError("Aucune donnée trouvée");
          }
          final userProfile = <ActiveUserProfileModel>[];
          return FirebaseSuccess(userProfile);
        }
      } else {
        final snapshot = await db.child('hotel').get();
        if (!snapshot.exists || snapshot.value == null) {
          return FirebaseError("Aucune donnée trouvée");
        }
        final userProfile = (snapshot.value as Map).values.map((e) {
          return ActiveUserProfileModel.fromJson(Map<String, dynamic>.from(e));
        }).toList();
        return FirebaseSuccess(userProfile);
      }
    } catch (e) {
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

  // @override
  // Future<FirebaseResult<List<LikeProfileResponseModel>>> getLike(
  //   NoParams params,
  // ) async {
  //   try {
  //     //{params.postId}
  //     final snapshot = await db.child('likes/').get();

  //     final likeItem = (snapshot.value as Map<Object?, Object?>).values.e.map((
  //       e,
  //     ) {
  //       log('getLike **------------>>>>>>>>> ${e.runtimeType}');

  //       return LikeProfileResponseModel.fromJson(Map<String, dynamic>.from(e));
  //     }).toList();

  //     return FirebaseSuccess([]);
  //   } catch (e) {
  //     log('>>>>>>>> $e');
  //     return FirebaseError(e.toString());
  //   }
  // }

  @override
  Future<FirebaseResult<List<LikeProfileResponseModel>>> getLike(
    NoParams params,
  ) async {
    try {
      final snapshot = await db.child('likes').get();

      if (!snapshot.exists || snapshot.value == null) {
        return FirebaseSuccess([]);
      }

      final root = snapshot.value as Map<Object?, Object?>;

      final likes = <LikeProfileResponseModel>[];

      for (final postEntry in root.values) {
        if (postEntry is Map) {
          for (final likeEntry in postEntry.values) {
            if (likeEntry is Map) {
              likes.add(
                LikeProfileResponseModel.fromJson(
                  Map<String, dynamic>.from(likeEntry),
                ),
              );
            }
          }
        }
      }

      return FirebaseSuccess(likes);
    } catch (e) {
      log('>>>>>>>> $e');
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> disLikePost(RequestLikePost params) async {
    try {
      final likeRef = db.child('likes/${params.postId}/${params.userId}');

      final snapshot = await likeRef.get();

      // 🔍 Vérifier si le like existe
      if (!snapshot.exists) {
        return FirebaseError("Like introuvable");
      }

      // 🗑 Supprimer le like
      await likeRef.remove();

      // 🔢 Décrémenter le compteur (si tu en as un)
      await db.child('posts/${params.postId}/likeCount').runTransaction((
        value,
      ) {
        if (value == null) {
          return databaseRf.Transaction.success(0);
        }
        final current = value as int;
        return databaseRf.Transaction.success(current > 0 ? current - 1 : 0);
      });

      return FirebaseSuccess(null);
    } catch (e) {
      return FirebaseError(e.toString());
    }
  }

  @override
  Future<FirebaseResult<String?>> likePost(RequestLikePost params) async {
    try {
      final likeRef = db.child('likes/${params.postId}/${params.userId}');

      // // 🔍 Vérifier si le like existe déjà
      final snapshot = await likeRef.get();

      if (snapshot.exists) {
        disLikePost(params);
        return FirebaseError("Vous avez déjà liké ce post");
      }

      // ✅ Sauvegarde (1 like max par user par post)
      await likeRef.set(
        params.copyWith(likeId: "${params.postId}_${params.userId}").toJson(),
      );

      return FirebaseSuccess(likeRef.key);
    } catch (e) {
      log('-------------------- $e');
      return FirebaseError(e.toString());
    }
  }
}
