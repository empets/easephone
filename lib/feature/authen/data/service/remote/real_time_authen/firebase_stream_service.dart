import 'package:com.example.epbomi/feature/authen/data/domaine/authen_model.dart';
import 'package:firebase_database/firebase_database.dart';

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
}
