import 'package:com.example.epbomi/core/extension/email_extension.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/recuperation_authentidication_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/event/authentification_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/authentification/state/authentification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CompteRecuperationBloc
    extends Bloc<AuthentificationEvent, AuthentificationState> {
  CompteRecuperationBloc({required this.recuperationAuthentidication})
    : super(AuthentificationState.initiale()) {
    on<AuthentificationEvent>(emailAuthen);
  }

  final RecuperationAuthentidicationUsercase recuperationAuthentidication;

  Future<void> emailAuthen(
    AuthentificationEvent event,
    Emitter<AuthentificationState> emit,
  ) async {
    switch (event) {
      case ChangeRemenberAuthentificationEvent(:final remenber):
        emit(
          state.copyWith(
            remenber: PhoneFormz.dirty(remenber),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([PhoneFormz.dirty(remenber)]),
          ),
        );

        break;

      // connexion au compte
      case ResetAuthentificationSigninAuthentificationEvent():
        if (state.isValide) {
          emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
          await Future.delayed(Duration(seconds: 4));

          final response = await recuperationAuthentidication.call(
            RequestAuthentificationSignIntificationSignIntificationSignUp(
              email: state.email.value,
              password: state.password.value,
              remenber: state.remenber.value,
              isgoogleAuthen: false,
            ),
          );

          emit(
            response.fold(
              (l) => state.copyWith(
                status: FormzSubmissionStatus.failure,
                errorMessage: 'Cet utilisateur existe pas créer un compte',
              ),
              (r) => state.copyWith(status: FormzSubmissionStatus.success),
            ),
          );
        }
    }
  }
}
