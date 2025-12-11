import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_by_mail_event.freezed.dart';

@freezed
class AuthByMailEvent with _$AuthByMailEvent {
  factory AuthByMailEvent.changeEmail(String email) =
      ChangeEmailAuthByMailEvent;

  factory AuthByMailEvent.changePassword(String password) =
      ChangePasswordAuthByMailEvent;

  factory AuthByMailEvent.submitSignup() = SubmitAuthByMailEvent;

  factory AuthByMailEvent.submitSignin() = SubmitSigninMailEvent;
}
