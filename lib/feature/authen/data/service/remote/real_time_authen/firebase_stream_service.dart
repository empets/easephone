import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:com.example.epbomi/feature/home/data/domaine/home_response_model.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/firebase_database.dart' as databaseRf;

class FirebaseStreamService {
  Stream<ProfileUserModel?> userStream(String userId) {
    return FirebaseDatabase.instance.ref('users').child(userId).onValue.map((
      event,
    ) {
      final data = event.snapshot.value;

      if (data == null) {
        // Si l'utilisateur n'existe pas encore
        return null;
      }

      // Conversion sécurisée en Map<String, dynamic>
      return ProfileUserModel.fromJson(Map<String, dynamic>.from(data as Map));
    });
  }

  Stream<List<LikeProfileResponseModel>> getLikeStream() {
    return FirebaseDatabase.instance.ref().child('likes').onValue.map((event) {
      final snapshot = event.snapshot;

      if (!snapshot.exists || snapshot.value == null) {
        return [];
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

      return likes;
    });
  }
}
