import 'package:badminist_app/utils/exception/validator_exception.dart';

class Validator {
  static const String _emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';

  static ValidatorException? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return ValidatorException.isEmpty;
    }
    if (!RegExp(_emailRegex).hasMatch(email)) {
      return ValidatorException.inValidEmail;
    }
    return null;
  }

  static ValidatorException? nullCheck(String? value) {
    if (value == null || value.isEmpty) {
      return ValidatorException.isEmpty;
    }
    return null;
  }

  static ValidatorException? isInteger(String? number) {
    if (number == null || number.isEmpty) {
      return ValidatorException.isEmpty;
    }
    if (int.tryParse(number) == null) {
      return ValidatorException.isNotInteger;
    }
    return null;
  }

  static ValidatorException? isNaturalNumber(String? number) {
    if (number == null || number.isEmpty) {
      return ValidatorException.isEmpty;
    }
    if (int.tryParse(number) == null) {
      return ValidatorException.isNotInteger;
    }
    if (int.parse(number) < 0) {
      return ValidatorException.isNotNaturalNumber;
    }
    return null;
  }
}
