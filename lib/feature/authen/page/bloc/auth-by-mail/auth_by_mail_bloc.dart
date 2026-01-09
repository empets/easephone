
import 'package:com.example.epbomi/core/extension/email_extension.dart';
import 'package:com.example.epbomi/core/extension/extensions.dart';
import 'package:com.example.epbomi/core/extension/extension_form.dart';
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
  }) : super(AuthByMailState.initiale()) {
    on<AuthByMailEvent>(emailAuthen);
  }

  final AuthenByMailUsercase authenByMailUsercase;
  final SigninUsercase signinUsercase;

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
            isValide: Formz.validate([EmailFormz.dirty(email), state.password]),
          ),
        );

        break;

      case ChangePasswordAuthByMailEvent(:final password):
        emit(
          state.copyWith(
            password: TextFormz.dirty(password),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([TextFormz.dirty(password), state.email]),
          ),
        );
        break;

      case SubmitAuthByMailEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 4));



          final response = await authenByMailUsercase.call(
            RequestAuthen(
              email: state.email.value,
              password: state.password.value,
            ),
          );

          emit(
            response.fold(
              (l) => state.copyWith(
                status: FormzSubmissionStatus.failure,
                errorMessage: l.message.getOrEmpty(),
              ),
              (r) => state.copyWith(
                status: FormzSubmissionStatus.success,
                errorMessage: r.getOrEmpty(),
              ),
            ),
          );
        }

      case SubmitSigninMailEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 4));

     

          final response = await signinUsercase.call(
            RequestAuthen(
              email: state.email.value,
              password: state.password.value,
            ),
          );

          emit(
            response.fold(
              (l) => state.copyWith(
                status: FormzSubmissionStatus.failure,
                errorMessage: l.message.getOrEmpty(),
              ),
              (r) => state.copyWith(
                status: FormzSubmissionStatus.success,
                errorMessage: r.getOrEmpty(),
              ),
            ),
          );
        }
    }
  }
}
