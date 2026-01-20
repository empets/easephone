import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/get_user_profile_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetUserProfileBloc extends Bloc<SigninEvent, ApiState<ProfileUser>> {
  GetUserProfileBloc({required this.getUserProfileUsercase})
    : super(ApiState<ProfileUser>.initial()) {
    on<SigninEvent>(getUser);
  }

  final GetUserProfileUsercase getUserProfileUsercase;
  Future<void> getUser(
    SigninEvent event,
    Emitter<ApiState<ProfileUser>> emit,
  ) async {
    switch (event) {
      case GoogleAuthenSigninEvent():
        emit(ApiState<ProfileUser>.load());
        final response = await getUserProfileUsercase.call(NoParams());

        emit(
          response.fold((l) => FailedState(l.message), (r) => SuccessState(r)),
        );
        break;
    }
  }
}
