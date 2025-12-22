import 'package:com.example.epbomi/core/extension/extension_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
part 'create_compte_state.freezed.dart';

@freezed
abstract class CreateCompteState with _$CreateCompteState {
  factory CreateCompteState({
    required TextFormz nomResidence,
    required TextFormz specialite,
    required TextFormz telephone,
    required TextFormz adresse,
    required TextFormz lat,
    required TextFormz long,
    required TextFormz whatsapp,
    required TextFormz facebok,
    required TextFormz email,
    required FormzSubmissionStatus status,
    required String errorMessage,
    required bool isValide,
  }) = SCreateCompteState;

  factory CreateCompteState.initial() => CreateCompteState(
    nomResidence: const TextFormz.pure(),
    specialite: const TextFormz.pure(),
    telephone: const TextFormz.pure(),
    adresse: const TextFormz.pure(),
    lat: const TextFormz.pure(),
    long: const TextFormz.pure(),
    whatsapp: const TextFormz.pure(),
    facebok: const TextFormz.pure(),
    email: const TextFormz.pure(),
    status: FormzSubmissionStatus.initial,
    errorMessage: '',
    isValide: false,
  );
}

@freezed
abstract class CreateCompteHbState with _$CreateCompteHbState {
  const factory CreateCompteHbState({
    required TextFormz roomNumber,
    required TextFormz averageBed,
    required TextFormz selectedOption,
    required TextFormz description,
    required FormzSubmissionStatus status,
    required String errorMessage,
    required bool isValide,
  }) = _CreateCompteHbState;

  factory CreateCompteHbState.initial() => const CreateCompteHbState(
    roomNumber: TextFormz.pure(),
    averageBed: TextFormz.pure(),
    selectedOption: TextFormz.pure(),
    description: TextFormz.pure(),
    status: FormzSubmissionStatus.initial,
    errorMessage: '',
    isValide: false,
  );
}
