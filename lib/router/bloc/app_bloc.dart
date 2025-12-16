
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/state/signin_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class AppRouteBloc extends Bloc<SigninEvent, SigninState> {
  AppRouteBloc(
    {required this.sharedPreferences}
    )
    : super(SigninState.inistate()) {
    on<SigninEvent>(myConnexionHand);
  }
  SharedPreferences sharedPreferences;
  Future<void> myConnexionHand(
    SigninEvent event,
    Emitter<SigninState> emit,
  ) async {
    switch (event) {
      case GoogleAuthenSigninEvent():
        final response = await sharedPreferences.getString('user_section');
        if (response != null && response.isNotEmpty) {
          emit(state.copyWith(status: FormzSubmissionStatus.success));
        }
        else{
          emit(
            state.copyWith(
              errorMsg: "",
              status: FormzSubmissionStatus.failure));

        }
        break;
    }

  }
}
