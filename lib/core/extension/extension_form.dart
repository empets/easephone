import 'package:com.example.epbomi/core/extension/extension.dart';
import 'package:formz/formz.dart';

enum TextFormzValidationError { empty }

enum TextLoginAndFibreFormzValidationError { empty }

// isValidPassword

class TextFormz extends FormzInput<String, TextFormzValidationError> {
  const TextFormz.dirty([super.value = '']) : super.dirty();
  const TextFormz.pure() : super.pure('');

  @override
  TextFormzValidationError? validator(String value) {
    final result = value.trim();

    return result.isNotEmpty ? null : TextFormzValidationError.empty;
  }
}

class TextLoginAndFibreFormz
    extends FormzInput<String, TextLoginAndFibreFormzValidationError> {
  const TextLoginAndFibreFormz.dirty([super.value = '']) : super.dirty();
  const TextLoginAndFibreFormz.pure() : super.pure('');

  @override
  TextLoginAndFibreFormzValidationError? validator(String value) {
    final result = value.trim();
    if (result.isNotEmpty && result.startsWith('27')) {
      return result.isIdentifiantFibre()
          ? null
          : TextLoginAndFibreFormzValidationError.empty;
    } else if (result.isNotEmpty && result.isValidEmail()) {
      return result.contains('ofibre')
          ? null
          : TextLoginAndFibreFormzValidationError.empty;
    } else {
      return TextLoginAndFibreFormzValidationError.empty;
    }
  }
}

enum TextOTPFormzValidationError { empty }

class TextOTPFormz extends FormzInput<String, TextOTPFormzValidationError> {
  const TextOTPFormz.dirty([super.value = '']) : super.dirty();
  const TextOTPFormz.pure() : super.pure('');

  @override
  TextOTPFormzValidationError? validator(String value) {
    final result = value.trim();
    return result.isNotEmpty && result.length == 4
        ? null
        : TextOTPFormzValidationError.empty;
  }
}

String detectType(String input) {
  input = input.trim();

  //Type LOGIN (email)
  if (input.contains('@ofibre.ci')) {
    return 'LOGIN';
  }

  //Type ND (commence par 27 + 10 chiffres)
  final ndRegex = RegExp(r'^27\d{8}$');
  if (ndRegex.hasMatch(input)) {
    return 'ND';
  }

  //Aucun type valide
  return 'invalide';
}

enum TextValiderNdFibreFormzValidationError { empty, invalid }

class TextValiderNdFibreFormz
    extends FormzInput<String, TextValiderNdFibreFormzValidationError> {
  const TextValiderNdFibreFormz.pure() : super.pure('');
  const TextValiderNdFibreFormz.dirty([super.value = '']) : super.dirty();

  @override
  TextValiderNdFibreFormzValidationError? validator(String value) {
    final result = value.trim();

    // Vérifie que la chaîne n’est pas vide
    if (result.isEmpty) {
      return TextValiderNdFibreFormzValidationError.empty;
    }

    // 🔹 Cas 1 : Numéro qui commence par 27 et contient 10 chiffres
    final isTenDigitNumberStartingWith27 =
        RegExp(r'^27\d{8}$').hasMatch(result);
    if (isTenDigitNumberStartingWith27) return null;

    // 🔹 Sinon, invalide
    return TextValiderNdFibreFormzValidationError.invalid;
  }
}
