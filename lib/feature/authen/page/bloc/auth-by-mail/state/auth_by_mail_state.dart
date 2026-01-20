import 'package:com.example.epbomi/core/extension/email_extension.dart';
import 'package:com.example.epbomi/core/extension/extension_form.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_by_mail_state.freezed.dart';

@freezed
abstract class AuthByMailState with _$AuthByMailState {
  factory AuthByMailState({
    required EmailFormz email,
    required PhoneFormz password,
    required FormzSubmissionStatus status,
    required String errorMessage,
    required bool isValide,
  }) = SAuthByMailState;

  factory AuthByMailState.initiale() => AuthByMailState(
    email: EmailFormz.pure(),
    password: PhoneFormz.pure(),
    status: FormzSubmissionStatus.initial,
    errorMessage: '',
    isValide: false,
  );
}
