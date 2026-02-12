import 'package:com.example.epbomi/core/extension/email_extension.dart';
import 'package:com.example.epbomi/core/extension/extension_form.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'authentification_state.freezed.dart';

@freezed
abstract class AuthentificationState with _$AuthentificationState {
  factory AuthentificationState({
    required EmailFormz email,
    required PhoneFormz password,
    required PhoneFormz remenber,
    required FormzSubmissionStatus status,
    required String errorMessage,
    required bool isValide,
  }) = SAuthentificationState;

  factory AuthentificationState.initiale() => AuthentificationState(
    email: EmailFormz.pure(),
    password: PhoneFormz.pure(),
    remenber: PhoneFormz.pure(),
    status: FormzSubmissionStatus.initial,
    errorMessage: '',
    isValide: false,
  );
}
