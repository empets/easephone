import 'package:com.example.epbomi/core/extension/email_extension.dart';
import 'package:com.example.epbomi/core/extension/extensions.dart';
import 'package:com.example.epbomi/core/extension/extension_form.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/signup_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/signin_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/event/authentification_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/state/authentification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthentificationSignUpBloc
    extends Bloc<AuthentificationEvent, AuthentificationState> {
  AuthentificationSignUpBloc({
    required this.authenSignUp,
    required this.googleAuthService,
  }) : super(AuthentificationState.initiale()) {
    on<AuthentificationEvent>(signUp);
  }

  final AuthentificationSignUpUsercase authenSignUp;
  final GoogleAuthService googleAuthService;

  Future<void> signUp(
    AuthentificationEvent event,
    Emitter<AuthentificationState> emit,
  ) async {
    switch (event) {
      case ChangeEmailAuthentificationEvent(:final email):
        emit(
          state.copyWith(
            email: EmailFormz.dirty(email),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              EmailFormz.dirty(email),
              state.password,
              state.remenber,
            ]),
          ),
        );

        break;

      case ChangePasswordAuthentificationEvent(:final password):
        emit(
          state.copyWith(
            password: PhoneFormz.dirty(password),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              PhoneFormz.dirty(password),
              state.email,
              state.remenber,
            ]),
          ),
        );
        break;
      case ChangeRemenberAuthentificationEvent(:final remenber):
        emit(
          state.copyWith(
            remenber: PhoneFormz.dirty(remenber),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              PhoneFormz.dirty(remenber),
              state.email,
              state.password,
            ]),
          ),
        );
        break;

      // creation de compte
      case SubmitAuthentificationEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 4));

          final authResponse = await authenSignUp.call(
            RequestAuthentificationSignIntificationSignIntificationSignUp(
              email: state.email.value,
              password: state.password.value,
              remenber: state.remenber.value,
              isgoogleAuthen: false,
            ),
          );

          authResponse.fold(
            // ❌ Erreur login
            (failure) {
              emit(
                state.copyWith(
                  status: FormzSubmissionStatus.failure,
                  errorMessage: "Cet utilisateur existe déja connecter vous",
                ),
              );
            },

            // ✅ Succès total
            (result) {
              emit(state.copyWith(status: FormzSubmissionStatus.success));
            },
          );
        }
    }
  }
}
