import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/response/authen_response.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/get_profile_list_usercase.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetProfileListBloc extends Bloc<SigninEvent, ApiState<List<ProfileUser>>> {
  GetProfileListBloc({required this.getProfileListUsercase})
    : super(ApiState<List<ProfileUser>>.initial()) {
    on<SigninEvent>(getProfileList);
  }

  GetProfileListUsercase getProfileListUsercase;
  Future<void> getProfileList(
    SigninEvent event,
    Emitter<ApiState<List<ProfileUser>>> emit,
  ) async {
    switch (event) {
      case GoogleAuthenSigninEvent():
        emit(ApiState<List<ProfileUser>>.load());
        final response = await getProfileListUsercase.call(
       NoParams() );

        emit(
          response.fold((l) => FailedState(l.message), (r) => SuccessState(r)),
        );
        break;
    }
  }
}
