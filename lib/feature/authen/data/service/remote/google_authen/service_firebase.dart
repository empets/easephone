import 'dart:developer';

import 'package:com.example.epbomi/feature/authen/data/repositories/impl_repositories_authen.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/real_time_authen/request_repository.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService  {


  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final GoogleSignIn _googleSignIn = GoogleSignIn();

  static Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return null;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await _auth.signInWithCredential(credential);
      log(
        "Google Sign-In Error: ${userCredential.user} ${userCredential.user!.email.toString()} ${userCredential.user!.phoneNumber.toString()}",
      );

      // firebaseRemoteService.userAuthen(
      //   RequestAuthen(
      //     email: userCredential.user!.email.toString(),
      //     password: userCredential.user!.phoneNumber.toString(),
      //   ),
      // );

      return userCredential.user;
    } catch (e) {
      log("Google Sign-In Error: $e");
      return null;
    }
  }

  static Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
