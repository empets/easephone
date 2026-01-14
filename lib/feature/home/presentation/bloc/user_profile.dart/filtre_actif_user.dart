

// import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart' show ApiState, FailedState, SuccessState;
// import 'package:com.example.epbomi/core/usercase/usercase.dart';
// import 'package:com.example.epbomi/feature/authen/page/bloc/google_authen/event/signin_event.dart';
// import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
// import 'package:com.example.epbomi/feature/home/domaine/usercase/get_actif_compte_information_usercase.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class GetActifUserInformationBloc extends Bloc<SigninEvent, ApiState<List<ActiveUserProfile>>> {
//   GetActifUserInformationBloc({required this.getActifCompteInformationUsercase})
//     : super(ApiState<List<ActiveUserProfile>>.initial()) {
//     on<SigninEvent>(getUser);
//   }

//   GetActifCompteInformationUsercase getActifCompteInformationUsercase;
//   Future<void> getUser(
//     SigninEvent event,
//     Emitter<ApiState<List<ActiveUserProfile>>> emit,
//   ) async {
//     switch (event) {
//       case GoogleAuthenSigninEvent():
//         emit(ApiState<List<ActiveUserProfile>>.load());
//         final response = await getActifCompteInformationUsercase.call(
//        NoParams() );

//         emit(
//           response.fold((l) => FailedState(l.message), (r) {
            
//             return SuccessState(r);
//           }),
//         );
//         break;
//     }
//   }
// }
