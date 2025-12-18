import 'dart:developer';
import 'package:com.example.epbomi/core/data_process/success.dart';
import 'package:com.example.epbomi/feature/home/data/domaine/home_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:firebase_database/firebase_database.dart' as databaseRf;

abstract class MarchanServiceFirebase {
  // cette mehode permet d'obtenir les information sur un compte actf
  Future<FirebaseResult<List<ActiveUserProfileModel>>>
  getActifUserInformationAboutCompte();
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
      return FirebaseError(e.toString());
    }
  }
}
