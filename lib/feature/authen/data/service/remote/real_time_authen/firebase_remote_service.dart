import 'dart:developer';
import 'package:com.example.epbomi/core/data_process/request/request.dart';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart' as databaseReference;
import 'package:shared_preferences/shared_preferences.dart';

abstract class FirebaseRemoteService {
  Future<FirebaseResult<String?>> userAuthen(RequestAuthen params);
  Future<FirebaseResult<String?>> signIn(RequestAuthen params);
  Future<FirebaseResult<String?>> createCompte(
    RequestCreateCompteHomeInformation params,
  );
  Future<FirebaseResult<String?>> createCompteUpdateFormToher(
    RequestCreateCompteHeber params,
  );

  Future<FirebaseResult<ProfileUserModel>> getProfileUser();
}

@LazySingleton(as: FirebaseRemoteService)
class ImplFirebaseRemoteService implements FirebaseRemoteService {
  ImplFirebaseRemoteService({required this.db});

  final databaseReference.DatabaseReference db;
  late String userKey = '';

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
    try {
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

      // 4) Retourner le key généré
      return FirebaseSuccess(ref.key);
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
    final localUserSection = sharedPreferences.getString('user_section');

    try {
      // final request = Request<RequestCreateCompteHeber>(
      //   data: params.toJson(),
      //   user: localUserSection.toString(),
      //   serviceLibelle: '',
      // );
      // log('************$userKey');
      final Map<String, dynamic> updates = {
        ...params.toJson(), // nouveaux champs simples
        'serviceLibelle': '',
        'user': localUserSection.toString(),
      };
      // 2) Créer une nouvelle entrée
      await db.child('hotel/$userKey').update(updates);

      // 4) Retourner le key généré
      return FirebaseSuccess(userKey);
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
}
