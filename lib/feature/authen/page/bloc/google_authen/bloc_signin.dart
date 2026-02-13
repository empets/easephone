import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class GoogleAuthenBloc extends Bloc<SigninEvent, SigninState> {
  GoogleAuthenBloc({required this.googleAuthService, })
    : super(SigninState.inistate()) {
    on<SigninEvent>(googleAuthen);
  }

  final GoogleAuthService googleAuthService;
  // final AuthentificationSignUpUsercase signinUsercase;

  Future<void> googleAuthen(
    SigninEvent event,
    Emitter<SigninState> emit,
  ) async {
    switch (event) {
      // case GoogleAuthenSigninEvent():
      //   emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
      //   final user = await GoogleAuthService.signInWithGoogle();
      //   if (user != null) {
      //     log(
      //       "Connecté : ${user.displayName} ${user.email} ${user.uid} ${user.phoneNumber}",
      //     );
      //     await signinUsercase.call(
      //       RequestAuthentificationSignIntificationSignIn(
      //         email: user.email.toString(),
      //         password: user.email.toString(),
      //         isgoogleAuthen: true,
      //       ),
      //     );
      //     final shared = await SharedPreferences.getInstance();
      //     await shared.setString('user_section', user.uid ?? '');
      //     await shared.setString(
      //       'user_actif_by_change_profile_photo',
      //       user.uid ?? '',
      //     );

      //     return emit(state.copyWith(status: FormzSubmissionStatus.success));
      //   } else {
      //     return emit(state.copyWith(status: FormzSubmissionStatus.failure));
      //   }
    }
  }
}
