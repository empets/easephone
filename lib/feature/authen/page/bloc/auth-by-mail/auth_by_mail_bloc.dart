import 'package:com.example.epbomi/core/extension/email_extension.dart';
import 'package:com.example.epbomi/core/extension/extensions.dart';
import 'package:com.example.epbomi/core/extension/extension_form.dart';
import 'package:com.example.epbomi/feature/authen/data/service/remote/google_authen/service_firebase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/authen_by_mail_usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/signin_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/event/auth_by_mail_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/auth-by-mail/state/auth_by_mail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthByMailBloc extends Bloc<AuthByMailEvent, AuthByMailState> {
  AuthByMailBloc({
    required this.signinUsercase,
    required this.authenByMailUsercase,
    required this.googleAuthService,
  }) : super(AuthByMailState.initiale()) {
    on<AuthByMailEvent>(emailAuthen);
  }

  final AuthenByMailUsercase authenByMailUsercase;
  final SigninUsercase signinUsercase;
  final GoogleAuthService googleAuthService;

  Future<void> emailAuthen(
    AuthByMailEvent event,
    Emitter<AuthByMailState> emit,
  ) async {
    switch (event) {
      case ChangeEmailAuthByMailEvent(:final email):
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

      case ChangePasswordAuthByMailEvent(:final password):
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
      case ChangeRemenberAuthByMailEvent(:final remenber):
        emit(
          state.copyWith(
            password: PhoneFormz.dirty(remenber),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(remenber),
              state.email,
              state.password,
            ]),
          ),
        );
        break;

      // creation de compte
      case SubmitAuthByMailEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 4));

          final createResponse = await googleAuthService
              .createAccountIfNotExists(
                email: state.email.value,
                password: state.password.value,
              );

          await createResponse.fold(
            // ❌ Compte existe déjà
            (failure) async {
              emit(
                state.copyWith(
                  status: FormzSubmissionStatus.failure,
                  errorMessage: 'Cet utilisateur existe déjà, connectez-vous',
                ),
              );
            },

            // ✅ Compte créé → on authentifie
            (success) async {
              final authResponse = await authenByMailUsercase.call(
                RequestAuthen(
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
                      errorMessage:
                          "Cet utilisateur existe déja connecter vous",
                    ),
                  );
                },

                // ✅ Succès total
                (result) {
                  emit(state.copyWith(status: FormzSubmissionStatus.success));
                },
              );
            },
          );
        }

      // connexion au compte
      case SubmitSigninMailEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 4));

          final response = await signinUsercase.call(
            RequestAuthen(
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

      // reserte  compte
      case ResetAuthentificationSigninMailEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          // await Future.delayed(Duration(seconds: 4));

          final response = await googleAuthService.sendActionEmail(
            email: state.email.value,
          );

          emit(
            response.fold(
              (l) => state.copyWith(
                status: FormzSubmissionStatus.failure,
                errorMessage: 'Aucun compte trouvé avec cet email',
                // l.message.getOrEmpty(),
              ),
              (r) => state.copyWith(status: FormzSubmissionStatus.success),
            ),
          );
        }
    }
  }
}

