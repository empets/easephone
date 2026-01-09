import 'dart:developer';

import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/data_process/failure.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_like_number.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/event/like_profile_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetLikeNumberBloc
    extends Bloc<LikeProfileEvent, ApiState<List<LikeResponse>>> {
  GetLikeNumberBloc({required this.getLikeListeUsercase})
    : super(ApiState<List<LikeResponse>>.initial()) {
    on<LikeProfileEvent>(getLikeList);
  }

  GetLikeListeUsercase getLikeListeUsercase;

  Future<void> getLikeList(
    LikeProfileEvent event,
    Emitter<ApiState<List<LikeResponse>>> emit,
  ) async {
    await event.whenOrNull(
      likeProfile: (like)async {
        if (like == true) {
          emit(ApiState<List<LikeResponse>>.load());

          final response = await getLikeListeUsercase.call(NoParams());

          emit(
            response.fold(
              (l) {
                log('like number fail $l');

                return FailedState(l.message);
              },
              (r) {
                log('like number $r');
                return SuccessState(r);
              },
            ),
          );
        }
      },
    );
  }
}

//   Future<void> getLikeList(
//   LikeProfileEvent event,
//   Emitter<ApiState<List<LikeResponse>>> emit,
// ) async {
//   await event.whenOrNull(
//     likeProfile: (like) async {
//       if (like == true) {
//         emit(ApiState<List<LikeResponse>>.load());

//         await emit.forEach<
//             Either<Failure, List<LikeResponse>>>(
//           getLikeListeUsercase(NoParams()),
//           onData: (response) {
//             return response.fold(
//               (failure) {
//                 log('❌ like number fail: ${failure.message}');
//                 return FailedState(failure.message);
//               },
//               (likes) {
//                 log('✅ like number: ${likes.length}');
//                 return SuccessState(likes);
//               },
//             );
//           },
//           onError: (error, stackTrace) {
//             log('🔥 stream error: $error');
//             return FailedState(error.toString());
//           },
//         );
//       }
//     },
//   );
// }
// }

// class GetLikeNumberBloc
//     extends Bloc<LikeProfileEvent, ApiState<List<LikeResponse>>> {
//   final GetLikeListeUsercase getLikeListeUsercase;

//   GetLikeNumberBloc({required this.getLikeListeUsercase})
//     : super(ApiState<List<LikeResponse>>.initial()) {
//     on<LikeProfileEvent>(_onLikeProfileEvent);
//   }

//   void _onLikeProfileEvent(
//     LikeProfileEvent event,
//     Emitter<ApiState<List<LikeResponse>>> emit,
//   ) async {
//     await event.whenOrNull(
//       likeProfile: (like) {
//         if (like == true) {
//           // Emit loading au début
//           emit(ApiState<List<LikeResponse>>.load());

//           // Écoute continue du Stream
//           emit.forEach<Either<Failure, List<LikeResponse>>>(
//             getLikeListeUsercase(NoParams()), // Retourne un Stream
//             onData: (response) => response.fold(
//               (failure) {
//                 log('❌ like number fail: ${failure.message}');
//                 return FailedState(failure.message);
//               },
//               (likes) {
//                 log('✅ like number: ${likes.length}');
//                 return SuccessState(likes);
//               },
//             ),
//             onError: (error, _) {
//               log('🔥 stream error: $error');
//               return FailedState(error.toString());
//             },
//           );
//         }
//       },
//     );
//   }
// }
