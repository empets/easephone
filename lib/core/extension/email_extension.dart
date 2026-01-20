import 'package:com.example.epbomi/core/extension/extensions.dart';
import 'package:formz/formz.dart';

enum EmailFormzValidationError { empty }

class EmailFormz extends FormzInput<String, EmailFormzValidationError> {
  const EmailFormz.dirty([super.value = '']) : super.dirty();
  const EmailFormz.pure() : super.pure('');

  @override
  EmailFormzValidationError? validator(String value) {
    final result = value.trim();
    return result.isNotEmpty &&
            result.contains('@gmail.com') &&
            result.isValidEmail()
        ? null
        : EmailFormzValidationError.empty;
  }
}

class PhoneFormz extends FormzInput<String, EmailFormzValidationError> {
  const PhoneFormz.dirty([super.value = '']) : super.dirty();
  const PhoneFormz.pure() : super.pure('');

  @override
  EmailFormzValidationError? validator(String value) {
    final result = value.trim();

    return result.isNotEmpty && result.length == 10
        ? null
        : EmailFormzValidationError.empty;
  }
}
