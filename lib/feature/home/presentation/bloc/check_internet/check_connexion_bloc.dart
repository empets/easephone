import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class CheckConnexionBloc extends Bloc<SigninEvent, ApiState<bool>> {
  CheckConnexionBloc() : super(ApiState<bool>.initial()) {
    on<SigninEvent>(checkConnexion);
  }

  Future<void> checkConnexion(
    SigninEvent event,
    Emitter<ApiState<bool>> emit,
  ) async {
    switch (event) {
      case UserIsOnlyneGoogleAuthenSigninEvent(:final bool userIsOnlyne):
        if (userIsOnlyne == true) {
          emit(ApiState<bool>.load());
          emit(ApiState.success(true, status: FormzSubmissionStatus.success));
        }
        if (userIsOnlyne == false) {
          emit(ApiState<bool>.load());
          emit(ApiState.failed("Vérifier votre connexion internet"));
        }

        break;
    }
  }
}
