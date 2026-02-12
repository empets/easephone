import 'package:com.example.epbomi/core/extension/email_extension.dart';
import 'package:com.example.epbomi/core/extension/extension_form.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/signin_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/event/authentification_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/state/authentification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthentificationAuthentificationSignInBloc
    extends Bloc<AuthentificationEvent, AuthentificationState> {
  AuthentificationAuthentificationSignInBloc({
    required this.authenSignIn,
    required this.googleAuthService,
  }) : super(AuthentificationState.initiale()) {
    on<AuthentificationEvent>(emailAuthen);
  }

  final AuthentificationSignInUsercase authenSignIn;
  final GoogleAuthService googleAuthService;

  Future<void> emailAuthen(
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
              // state.remenber,
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
              TextFormz.dirty(password),
              state.email,
              // state.remenber,
            ]),
          ),
        );
        break;

      // connexion au compte
      case SubmitSigninAuthentificationEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 4));

          final response = await authenSignIn.call(
            RequestAuthentificationSignIntificationSignIn(
              email: state.email.value,
              password: state.password.value,
              isgoogleAuthen: false,
            ),
          );

          emit(
            response.fold(
              (l) => state.copyWith(
                status: FormzSubmissionStatus.failure,
                errorMessage: 'Cet utilisateur existe pas créer un compte',
                // l.message.getOrEmpty(),
              ),
              (r) => state.copyWith(status: FormzSubmissionStatus.success),
            ),
          );
        }
    }
  }
}
