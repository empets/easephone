import 'dart:developer';

import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/dis_like_profile_usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/liker_profile.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/event/like_profile_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LikeProfileBloc extends Bloc<LikeProfileEvent, ApiState<String?>> {
  LikeProfileBloc({
    required this.likeProfileUsercase,
    required this.disLikeProfileUsercase,
  }) : super(ApiState<String?>.initial()) {
    on<LikeProfileEvent>(likeProfile);
  }

  LikeProfileUsercase likeProfileUsercase;
  DisLikeProfileUsercase disLikeProfileUsercase;
  Future<void> likeProfile(
    LikeProfileEvent event,
    Emitter<ApiState<String?>> emit,
  ) async {
    switch (event) {
      case LikeProfileProfileEvent(:final bool? like):
        if (like != null && like == true) {
          emit(ApiState<String?>.load());
          final sharedPreferences = await SharedPreferences.getInstance();
          final localUserSection = sharedPreferences.getString('user_section');
          final response = await likeProfileUsercase.call(
            RequestLike(compter: 1, userId: localUserSection.toString()),
          );
          emit(
            response.fold(
              (l) => ApiState.failed(l.message),
              (r) => ApiState.success(r),
            ),
          );
        }

        break;

      case DisLikeProfileProfileEvent(:final bool? disLike):
        if (disLike != null && disLike == false) {
          emit(ApiState<String?>.load());
          final sharedPreferences = await SharedPreferences.getInstance();
          final localUserSection = sharedPreferences.getString('user_section');
          final response = await disLikeProfileUsercase.call(
            RequestLike(compter: -1, userId: localUserSection.toString()),
          );
          emit(
            response.fold(
              (l) {
                log('==== $l');
                return ApiState.failed(l.message);
              },
              (r) {
                log('==== ');
                return ApiState.success(null);
              },
            ),
          );
        }
    }
  }
}
