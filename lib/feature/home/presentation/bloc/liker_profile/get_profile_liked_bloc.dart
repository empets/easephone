import 'dart:developer';

import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/core/usercase/usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/response/home_response.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/get_profile_liked_usecase.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/event/like_profile_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class GetProfileLikedBloc
    extends Bloc<LikeProfileEvent, ApiState<List<LikeProfileResponse>>> {
  GetProfileLikedBloc({required this.getProfileLikedUsecase})
    : super(ApiState<List<LikeProfileResponse>>.initial()) {
    on<LikeProfileEvent>(getLikeList);
  }

  GetProfileLikedUsecase getProfileLikedUsecase;

  Future<void> getLikeList(
    LikeProfileEvent event,
    Emitter<ApiState<List<LikeProfileResponse>>> emit,
  ) async {
    await event.whenOrNull(
      fetchLike: () async {
        emit(ApiState<List<LikeProfileResponse>>.load());

        final response = await getProfileLikedUsecase.call(NoParams());

        emit(
          response.fold(
            (l) => ApiState.failed(l.message),
            (r) => ApiState.success(r, status: FormzSubmissionStatus.success),
          ),
        );
      },
    );
  }
}
