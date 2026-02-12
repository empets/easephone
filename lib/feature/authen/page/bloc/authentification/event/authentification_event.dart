import 'package:freezed_annotation/freezed_annotation.dart';
part 'authentification_event.freezed.dart';

@freezed
class AuthentificationEvent with _$AuthentificationEvent {
  factory AuthentificationEvent.changeEmail(String email) =
      ChangeEmailAuthentificationEvent;

  factory AuthentificationEvent.changePassword(String password) =
      ChangePasswordAuthentificationEvent;

  factory AuthentificationEvent.changeRemenber(String remenber) =
      ChangeRemenberAuthentificationEvent;

  factory AuthentificationEvent.submitSignup() = SubmitAuthentificationEvent;

  factory AuthentificationEvent.submitSignin() =
      SubmitSigninAuthentificationEvent;

  factory AuthentificationEvent.resetAuthentification() =
      ResetAuthentificationSigninAuthentificationEvent;
}
