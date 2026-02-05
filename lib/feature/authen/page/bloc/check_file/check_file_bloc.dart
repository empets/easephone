import 'package:com.example.epbomi/core/extension/extension_form.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/create_compte_check_file.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/check_file/event/check_file_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/state/create_compte_state.dart';
import 'package:com.example.epbomi/feature/home/domaine/entities/request/home_request.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckFileBloc
    extends Bloc<CheckFileEvent, CreateCompteCheckingFileState> {
  CheckFileBloc({required this.compteCheckFile})
    : super(CreateCompteCheckingFileState.initial()) {
    on<CheckFileEvent>(checkingFile);
  }

  final CreateCompteCheckFile compteCheckFile;

  Future<void> checkingFile(
    CheckFileEvent event,
    Emitter<CreateCompteCheckingFileState> emit,
  ) async {
    switch (event) {
      case ChangeGetRectoCheckFileEvent(:String cniRecto):
        emit(
          state.copyWith(
            cnRecto: TextFormz.dirty(cniRecto),

            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([
              TextFormz.dirty(cniRecto),
              state.cnvecso,
            ]),
          ),
        );
        break;

      case ChangeGetVersoCheckFileEvent(:String cniVeso):
        emit(
          state.copyWith(
            cnvecso: TextFormz.dirty(cniVeso),
            status: FormzSubmissionStatus.initial,
            isValide: Formz.validate([TextFormz.dirty(cniVeso), state.cnRecto]),
          ),
        );
        break;

      case SubmitCheckFileEvent():
        emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
        final sharedPreferences = await SharedPreferences.getInstance();
        final localUserSection = sharedPreferences.getString('user_section');
        final response = await compteCheckFile.call(
          RequestFormsCheckFile(
            recto: state.cnRecto.value,
            verso: state.cnvecso.value,
            userId: localUserSection.toString(),
            formFive: 'Success',
          ),
        );

        emit(
          response.fold(
            (l) => state.copyWith(
              status: FormzSubmissionStatus.failure,
              errorMessage: l.message.toString(),
            ),
            (r) => state.copyWith(status: FormzSubmissionStatus.success),
          ),
        );

        break;
    }
  }
}
