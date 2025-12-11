import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
part 'signin_state.freezed.dart';

@freezed
abstract class SigninState with _$SigninState {
  factory SigninState({
    required FormzSubmissionStatus status,
    required bool isValid,
    required String errorMsg,
  }) = SSigninState;

  factory SigninState.inistate() => SigninState(
    status: FormzSubmissionStatus.initial,
    isValid: false,
    errorMsg: '',
  );
}
