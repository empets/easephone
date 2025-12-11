import 'dart:developer';
import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class BlocSignin extends Bloc<SigninEvent, SigninState> {
  BlocSignin({required this.googleAuthService}) : super(SigninState.inistate()) {
    on<SigninEvent>(googleAuthen);
  }

  GoogleAuthService googleAuthService;

  Future<void> googleAuthen(
    SigninEvent event,
    Emitter<SigninState> emit,
  ) async {
    switch (event) {
      case GoogleAuthenSigninEvent():
        emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
        final user = await GoogleAuthService.signInWithGoogle();
        if (user != null) {
          log(
            "Connecté : ${user.displayName} ${user.email} ${user.uid} ${user.tenantId}",
          );
          return emit(state.copyWith(status: FormzSubmissionStatus.success));
        } else {
          return emit(state.copyWith(status: FormzSubmissionStatus.failure));
        }
    }
  }
}
