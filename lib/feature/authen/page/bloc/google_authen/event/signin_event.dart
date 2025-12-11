import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_event.freezed.dart';

@freezed
class SigninEvent with _$SigninEvent {
  factory SigninEvent.googleAuthen() = GoogleAuthenSigninEvent;
}
