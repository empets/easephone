import 'dart:developer';

import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/dis_like_profile_usercase.dart';
import 'package:com.example.epbomi/feature/home/domaine/usercase/like_profile_actif_usercase.dart';
import 'package:com.example.epbomi/feature/home/presentation/bloc/liker_profile/event/like_profile_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LikeProfileBloc extends Bloc<LikeProfileEvent, ApiState<String?>> {
  LikeProfileBloc({
    required this.likeProfileActifUsercase,
    required this.disLikeProfileActifUsercase,
  }) : super(ApiState<String?>.initial()) {
    on<LikeProfileEvent>(likeProfile);
  }

  LikeProfileActifUsercase likeProfileActifUsercase;
  DisLikeProfileActifUsercase disLikeProfileActifUsercase;
  Future<void> likeProfile(
    LikeProfileEvent event,
    Emitter<ApiState<String?>> emit,
  ) async {
    switch (event) {
      case LikeProfileProfileEvent(:final bool? like, :final String? userId):
        if (like != null && like == true) {
          emit(ApiState<String?>.load());
          final sharedPreferences = await SharedPreferences.getInstance();
          final localUserSection = sharedPreferences.getString('user_section');
          final response = await likeProfileActifUsercase.call(
            RequestLikePost(
              likeId: '',
              userId: localUserSection.toString(),
              postId: userId.toString(),
              type: 'like',
              date: DateTime.now().toString(),
            ),
          );
          emit(
            response.fold(
              (l) => ApiState.failed(l.message),
              (r) => ApiState.success(r),
            ),
          );
        }

        break;

      case DisLikeProfileProfileEvent(
        :final bool? disLike,
        :final String? userId,
      ):
        if (disLike != null && disLike == false) {
          emit(ApiState<String?>.load());
          final sharedPreferences = await SharedPreferences.getInstance();
          final localUserSection = sharedPreferences.getString('user_section');
          final response = await disLikeProfileActifUsercase.call(
            RequestLike(
              compter: 0,
              userId: localUserSection.toString(),
              date: DateTime.now().toString(),
              likeId: userId,
            ),
          );
          emit(
            response.fold(
              (l) {
                log('==== $l');
                return ApiState.failed(l.message);
              },
              (r) {
                log('==== $r');
                return ApiState.success(r);
              },
            ),
          );
        }
    }
  }
}
