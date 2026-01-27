import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
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

  static Future<void> sendOtp(String phone) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+2250700000000', // numéro de test
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        log('Erreur OTP: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        log('Code envoyé. VerificationId: $verificationId');
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        log('Timeout. VerificationId: $verificationId');
      },
      timeout: const Duration(seconds: 60),
    );
  }

  Future<void> verifyOtp(String otp) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: otp,
      smsCode: otp,
    );

    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // static Future<void> sendVerificationEmail(
  //   String email,
  //   String password,
  // ) async {
  //   try {
  //     // 1️⃣ Crée l'utilisateur
  //     UserCredential userCredential = await FirebaseAuth.instance
  //         .sendPasswordResetEmail(email: email, password: password);

  //     // 2️⃣ Envoie le mail de vérification
  //     await userCredential.user!.sendEmailVerification();

  //     log('Email de vérification envoyé à $email');
  //   } catch (e) {
  //     log('Erreur: $e');
  //   }
  // }

  static Future<void> registerUser(String email, String password) async {
    try {
      // 1️⃣ Créer un utilisateur via le SDK client
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // 2️⃣ Envoyer le mail de vérification
      await userCredential.user!.sendEmailVerification();

      print('Email de vérification envoyé à $email');
    } catch (e) {
      print('Erreur: $e');
    }
  }
}



