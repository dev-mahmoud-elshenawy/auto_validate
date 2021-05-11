import 'package:auto_validate/auto_validate.dart';
import 'package:flutter/widgets.dart' show FormFieldValidator;

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

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
        if (AutoValidate.email(value))
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
        if (AutoValidate.password(value))
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
        if (AutoValidate.passwordStrong(value))
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
        if (AutoValidate.phone(value))
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
        if (AutoValidate.phoneInternational(value))
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
        if (AutoValidate.userName(value))
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
        if (AutoValidate.passport(value))
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
        if (AutoValidate.dateYYYYMMDD(value))
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
        if (AutoValidate.dateMMDDYYYY(value))
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
        if (AutoValidate.alphanumeric(value))
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
        if (AutoValidate.alphanumericWithSpaces(value))
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
        if (AutoValidate.alphabet(value))
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
        if (AutoValidate.url(value))
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
        if (AutoValidate.inputArabic(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Credit Card Validator
  static FormFieldValidator<String> creditCard({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.creditCard(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// SSN Validator
  static FormFieldValidator<String> ssn({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.ssn(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// IPV4 Validator
  static FormFieldValidator<String> ipv4({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.ipv4(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// IPV6 Validator
  static FormFieldValidator<String> ipv6({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.ipv6(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// LowerCase Validator
  static FormFieldValidator<String> lowerCase({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.lowerCase(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// UpperCase Validator
  static FormFieldValidator<String> upperCase({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.upperCase(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Digits Validator
  static FormFieldValidator<String> digits({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.digits(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Decimals Validator
  static FormFieldValidator<String> decimals({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.decimals(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Signed Decimals Validator
  static FormFieldValidator<String> decimalsSigned({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.decimalsSigned(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Base64 Validator
  static FormFieldValidator<String> base64({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.base64(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Base32 Validator
  static FormFieldValidator<String> base32({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.base32(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Base58 Validator
  static FormFieldValidator<String> base58({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.base58(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// ASCII Validator
  static FormFieldValidator<String> ascii({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.ascii(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Capitalized Validator
  static FormFieldValidator<String> capitalized({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.capitalized(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// JWT Validator
  static FormFieldValidator<String> jwt({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.jwt(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// ISIN Validator
  static FormFieldValidator<String> isin({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.isin(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Mac Address Validator (Without Colons)
  static FormFieldValidator<String> macAddress({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.macAddress(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  /// Latitude and Longitude Validator
  static FormFieldValidator<String> latLng({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.latLng(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  ///  MD5 Hash Validator
  static FormFieldValidator<String> md5({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.md5(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  ///  Magnet URI Validator
  static FormFieldValidator<String> magnetURI({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.magnetURI(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  ///  Mongo ID Validator
  static FormFieldValidator<String> mongoID({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.mongoID(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  ///  Multibyte Validator
  static FormFieldValidator<String> multibyte({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.multibyte(value))
          return null;
        else
          return errorMessage;
      }
    };
  }

  ///  BIC Validator
  static FormFieldValidator<String> bic({String errorMessage}) {
    return (value) {
      if (value == null) {
        value = '';
      }
      if (value.isEmpty)
        return null;
      else {
        if (AutoValidate.bic(value))
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
