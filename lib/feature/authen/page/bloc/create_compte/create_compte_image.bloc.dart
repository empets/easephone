import 'package:com.example.epbomi/core/bloc_state/bloc_state.dart';
import 'package:com.example.epbomi/feature/authen/domaine/entites/request/authen_request.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/send_image.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/event/create_compte_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateCompteImageBloc
    extends Bloc<CreateCompteSendImage, ApiState<String>> {
  CreateCompteImageBloc({required this.compteSendImageUsercase})
    : super(ApiState<String>.initial()) {
    on<CreateCompteSendImage>(sendPhoto);
  }

  CreateCoompteSendImageUsercase compteSendImageUsercase;

  Future<void> sendPhoto(
    CreateCompteSendImage event,
    Emitter<ApiState<String>> emit,
  ) async {
    switch (event) {
      case CreateCompteSendImage(:final file):
        if (file.isNotEmpty) {
          emit(ApiState<String>.load());

          final sharedPreferences = await SharedPreferences.getInstance();
          final localUserSection = sharedPreferences.getString('user_section');

          final response = await compteSendImageUsercase.call(
            CreatCompteImage(
              file: file,
              userId: localUserSection.toString(),
              formTherd: 'success',
            ),
          );

          emit(
            response.fold(
              (l) => FailedState(l.message),
              (r) => SuccessState('success'),
            ),
          );
        }
    }
  }
}
