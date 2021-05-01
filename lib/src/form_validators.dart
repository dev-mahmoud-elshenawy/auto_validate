import 'package:flutter/widgets.dart' show FormFieldValidator;

import 'auto_validators.dart';

class FormValidator {
  ///Non-Null Required Field Validator
  static FormFieldValidator<String> required({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return errorMessage;
      else
        return null;
    };
  }

  /// MinLength Validator
  static FormFieldValidator<String> minLength(
      {int minLength, String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty) return null;

      if (value.length < minLength)
        return errorMessage;
      else
        return null;
    };
  }

  /// MaxLength Validator
  static FormFieldValidator<String> maxLength(
      {int maxLength, String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty) return null;

      if (value.length > maxLength)
        return errorMessage;
      else
        return null;
    };
  }

  /// Email Validator
  static FormFieldValidator<String> email({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.emailValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Password Validator
  static FormFieldValidator<String> password({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.passwordValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Password Strong Validator
  static FormFieldValidator<String> passwordStrong({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.passwordStrongValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Phone Validator
  static FormFieldValidator<String> phone({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.phoneNumberValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Phone International Validator
  static FormFieldValidator<String> phoneInternational({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.internationalPhoneNumberValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// UserName Validator
  static FormFieldValidator<String> userName({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.userNameValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Passport Validator
  static FormFieldValidator<String> passport({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.passportValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Date (YYYYMMDD) Validator
  static FormFieldValidator<String> dateYYYYMMDD({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.dateYYYYMMDDValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Date (YYYYMMDD) Validator
  static FormFieldValidator<String> dateMMDDYYYY({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.dateMMDDYYYYValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Alphanumeric Validator
  static FormFieldValidator<String> alphanumeric({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.alphanumericValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Alphanumeric With Spaces Validator
  static FormFieldValidator<String> alphanumericWithSpaces(
      {String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.alphanumericWithSpacesValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Alphabet With Spaces Validator
  static FormFieldValidator<String> alphabet({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.alphabetValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Alphabet With Spaces Validator
  static FormFieldValidator<String> url({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.urlValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Input Arabic Validator
  static FormFieldValidator<String> inputArabic({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidators.inputArabicValidate.hasMatch(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Combination From More Than One Form Validator
  static FormFieldValidator<String> combination(
      {List<FormFieldValidator<String>> validators}) {
    return (value) {
      for (final validator in validators) {
        final result = validator(value);
        if (result != null) return result;
      }
      return null;
    };
  }
}
