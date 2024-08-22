// import 'auto_validators.dart';

import 'auto_validators.dart';
import 'package:collection/collection.dart';

/// /// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)
///
///
/// A comprehensive utility class for validating various input formats against predefined patterns.
/// This class provides static methods for validating strings, ensuring they meet specific criteria
/// defined by regular expressions in the `AutoValidators` class.
class AutoValidate {
  /// Validates the given input string against a specified regular expression pattern.
  ///
  /// This method checks if both the `input` and `pattern` are non-null and
  /// verifies if the `input` matches the `pattern`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The input string to validate. Must not be null.
  /// - [pattern] (`RegExp?`): The regular expression pattern to match against. Must not be null.
  ///
  /// **Returns:**
  /// - `bool`: Returns `true` if the `input` is non-null and matches the `pattern`; otherwise, returns `false`.
  static bool _validate(String? input, RegExp? pattern) {
    return input != null && pattern != null && pattern.hasMatch(input);
  }

  /// Validates a username input based on the specified criteria.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The username to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the username is valid according to the username validation rules; otherwise, `false`.
  static bool userName(String? input) =>
      _validate(input, AutoValidators.userNameValidate);

  /// Validates a password input.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The password to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the password meets the required validation criteria; otherwise, `false`.
  static bool password(String? input) =>
      _validate(input, AutoValidators.passwordValidate);

  /// Validates a strong password input.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The strong password to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the strong password satisfies the validation criteria; otherwise, `false`.
  static bool passwordStrong(String? input) =>
      _validate(input, AutoValidators.passwordStrongValidate);

  /// Validates an email address.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The email address to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the email format is valid; otherwise, `false`.
  static bool email(String? input) =>
      _validate(input, AutoValidators.emailValidate);

  /// Validates a phone number.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The phone number to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the phone number is valid; otherwise, `false`.
  static bool phone(String? input) =>
      _validate(input, AutoValidators.phoneNumberValidate);

  /// Validates Arabic input.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The Arabic text to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the input contains valid Arabic characters; otherwise, `false`.
  static bool inputArabic(String? input) =>
      _validate(input, AutoValidators.inputArabicValidate);

  /// Validates a credit card number.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The credit card number to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the credit card number format is valid; otherwise, `false`.
  static bool creditCard(String? input) =>
      _validate(input, AutoValidators.creditCardValidate);

  /// Validates a Social Security Number (SSN).
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The SSN to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the SSN is valid; otherwise, `false`.
  static bool ssn(String? input) =>
      _validate(input, AutoValidators.ssnValidate);

  /// Validates an international phone number.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The international phone number to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the number is valid in an international format; otherwise, `false`.
  static bool phoneInternational(String? input) =>
      _validate(input, AutoValidators.internationalPhoneNumberValidate);

  /// Validates a passport number.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The passport number to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the passport number format is valid; otherwise, `false`.
  static bool passport(String? input) =>
      _validate(input, AutoValidators.passportValidate);

  /// Validates a date in MM/DD/YYYY format.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The date to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the date matches the MM/DD/YYYY format; otherwise, `false`.
  static bool dateMMDDYYYY(String? input) =>
      _validate(input, AutoValidators.dateMMDDYYYYValidate);

  /// Validates a date in YYYY/MM/DD format.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The date to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the date matches the YYYY/MM/DD format; otherwise, `false`.
  static bool dateYYYYMMDD(String? input) =>
      _validate(input, AutoValidators.dateYYYYMMDDValidate);

  /// Validates an IPv4 address.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The IPv4 address to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the IPv4 address is valid; otherwise, `false`.
  static bool ipv4(String? input) =>
      _validate(input, AutoValidators.ipv4Validate);

  /// Validates an IPv6 address.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The IPv6 address to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the IPv6 address is valid; otherwise, `false`.
  static bool ipv6(String? input) =>
      _validate(input, AutoValidators.ipv6Validate);

  /// Validates an alphanumeric string.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains only alphanumeric characters; otherwise, `false`.
  static bool alphanumeric(String? input) =>
      _validate(input, AutoValidators.alphanumericValidate);

  /// Validates an alphanumeric string that may include spaces.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is valid; otherwise, `false`.
  static bool alphanumericWithSpaces(String? input) =>
      _validate(input, AutoValidators.alphanumericWithSpacesValidate);

  /// Validates a string to ensure it contains only alphabetic characters.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is alphabetic; otherwise, `false`.
  static bool alphabet(String? input) =>
      _validate(input, AutoValidators.alphabetValidate);

  /// Validates a string to ensure it contains only lowercase characters.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is entirely lowercase; otherwise, `false`.
  static bool lowerCase(String? input) =>
      _validate(input, AutoValidators.lowerCaseValidate);

  /// Validates a string to ensure it contains only uppercase characters.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is entirely uppercase; otherwise, `false`.
  static bool upperCase(String? input) =>
      _validate(input, AutoValidators.upperCaseValidate);

  /// Validates a string to ensure it contains only digits.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains only digits; otherwise, `false`.
  static bool digits(String? input) =>
      _validate(input, AutoValidators.digitsValidate);

  /// Validates a decimal number format.
  ///
  /// This method checks if the input string conforms to the decimal format
  /// defined in `AutoValidators.decimalsValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string representation of the decimal number to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid decimal number; otherwise, `false`.
  static bool decimals(String? input) =>
      _validate(input, AutoValidators.decimalsValidate);

  /// Validates a signed decimal number format.
  ///
  /// This method checks if the input string conforms to the signed decimal
  /// format defined in `AutoValidators.decimalsSignedValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string representation of the signed decimal number to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid signed decimal number; otherwise, `false`.
  static bool decimalsSigned(String? input) =>
      _validate(input, AutoValidators.decimalsSignedValidate);

  /// Validates a URL format.
  ///
  /// This method checks if the input string matches the URL format defined
  /// in `AutoValidators.urlValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The URL string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the URL is valid; otherwise, `false`.
  static bool url(String? input) =>
      _validate(input, AutoValidators.urlValidate);

  /// Validates a Base64 encoded string.
  ///
  /// This method checks if the string's length is a multiple of 4 and
  /// ensures it matches the Base64 format defined in `AutoValidators.base64Validate`.
  /// It also checks the padding characters.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The Base64 string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid Base64 encoded string; otherwise, `false`.
  static bool base64(String? input) {
    if (input == null || input.length % 4 != 0) return false;
    return _validate(input, AutoValidators.base64Validate) &&
        (input.indexOf('=') == -1 || input.indexOf('=') >= input.length - 2);
  }

  /// Validates a Base32 encoded string.
  ///
  /// This method checks if the input string's length is a multiple of 8
  /// and conforms to the Base32 format defined in `AutoValidators.base32Validate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The Base32 string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid Base32 encoded string; otherwise, `false`.
  static bool base32(String? input) {
    return input != null &&
        input.length % 8 == 0 &&
        _validate(input, AutoValidators.base32Validate);
  }

  /// Validates a Base58 encoded string.
  ///
  /// This method checks if the input string matches the Base58 format
  /// defined in `AutoValidators.base58Validate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The Base58 string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid Base58 encoded string; otherwise, `false`.
  static bool base58(String? input) =>
      _validate(input, AutoValidators.base58Validate);

  /// Validates a string to ensure it contains only ASCII characters.
  ///
  /// This method checks if the input string conforms to the ASCII format
  /// defined in `AutoValidators.asciiValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains only ASCII characters; otherwise, `false`.
  static bool ascii(String? input) =>
      _validate(input, AutoValidators.asciiValidate);

  /// Validates the byte length of a string.
  ///
  /// This method checks if the byte length of the `string` falls within
  /// the specified range defined by `min` and `max`.
  ///
  /// **Parameters:**
  /// - [string] (`String?`): The string to validate.
  /// - [min] (`int`, optional): The minimum byte length. Defaults to 0.
  /// - [max] (`int`, optional): The maximum byte length.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the byte length is within the specified range; otherwise, `false`.
  static bool byteLength(String? string, {int min = 0, int? max}) {
    if (string == null) return false;
    final len = Uri.encodeFull(string).split(r'%').length - 1;
    return len >= min && (max == null || len <= max);
  }

  /// Validates that the input string is capitalized (first letter uppercase).
  ///
  /// This method checks if the first character of the string is uppercase
  /// and the rest of the string remains unchanged.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is capitalized; otherwise, `false`.
  static bool capitalized(String? input) {
    if (input == null || input.isEmpty) return false;
    return input[0] == input[0].toUpperCase() &&
        input == input[0].toUpperCase() + input.substring(1);
  }

  /// Validates if the input string contains emoji characters.
  ///
  /// This method checks if the input string matches the emoji format defined
  /// in `AutoValidators.emojiValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains emojis; otherwise, `false`.
  static bool emoji(String? input) =>
      _validate(input, AutoValidators.emojiValidate);

  /// Validates a JSON Web Token (JWT).
  ///
  /// This method checks if the input string conforms to the JWT format
  /// defined in `AutoValidators.jwtValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The JWT string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid JWT; otherwise, `false`.
  static bool jwt(String? input) =>
      _validate(input, AutoValidators.jwtValidate);

  /// Validates an International Securities Identification Number (ISIN).
  ///
  /// This method checks if the input string matches the ISIN format
  /// defined in `AutoValidators.isinValidate` and performs checksum validation.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The ISIN string to validate.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid ISIN; otherwise, `false`.
  static bool isin(String? input) {
    if (!_validate(input, AutoValidators.isinValidate)) return false;
    final checksumStr = input!.replaceAllMapped(RegExp(r'[A-Z]'),
        (match) => (match.group(0)!.codeUnitAt(0) - 55).toString());
    int sum = 0;
    bool shouldDouble = true;
    for (int i = checksumStr.length - 2; i >= 0; i--) {
      int digit = int.parse(checksumStr[i]);
      int tmpNum = shouldDouble ? digit * 2 : digit;
      sum += shouldDouble && tmpNum >= 10 ? tmpNum - 9 : tmpNum;
      shouldDouble = !shouldDouble;
    }
    return int.parse(input.substring(input.length - 1)) == (10 - sum % 10) % 10;
  }

  /// Validates an International Standard Book Number (ISBN).
  ///
  /// This method checks if the input string is a valid ISBN (version 10 or 13).
  /// It performs checksum validation based on the specified version.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The ISBN string to validate.
  /// - [version] (`String`, optional): The version of the ISBN ('10' or '13'). Defaults to `null` to check both.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is a valid ISBN; otherwise, `false`.
  static bool isbn(String? input, [String version = '']) {
    if (input == null || input.isEmpty) return false;
    final sanitized = input.replaceAll(RegExp(r'[\s-]+'), '');
    if (version.isEmpty) {
      return isbn(sanitized, '10') || isbn(sanitized, '13');
    } else if (version == '10' &&
        _validate(sanitized, AutoValidators.isbn10Validate)) {
      return sanitized.runes.take(9).mapIndexed((i, e) => (i + 1) * e).sum %
              11 ==
          0;
    } else if (version == '13' &&
        _validate(sanitized, AutoValidators.isbn13Validate)) {
      final factor = [1, 3];
      return sanitized.runes
                  .take(12)
                  .mapIndexed((i, e) => factor[i % 2] * e)
                  .sum %
              10 ==
          0;
    }
    return false;
  }

  /// Validates a MAC address format.
  ///
  /// This method checks if the input string conforms to the MAC address format,
  /// allowing for various styles (with or without colons).
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The MAC address string to validate.
  /// - [noColons] (`bool`, optional): If `true`, validates without colons.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is a valid MAC address; otherwise, `false`.
  static bool macAddress(String? input, {bool noColons = false}) {
    if (input == null || input.isEmpty) return false;
    if (noColons) {
      return _validate(input, AutoValidators.macAddressNoColonsValidate);
    }
    return _validate(input, AutoValidators.macAddressValidate) ||
        _validate(input, AutoValidators.macAddressWithHyphenValidate) ||
        _validate(input, AutoValidators.macAddressWithSpacesValidate);
  }

  /// Validates a hexadecimal color code.
  ///
  /// This method checks if the input string matches the format for hexadecimal
  /// color codes defined in `AutoValidators.hexColorValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The hexadecimal color string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is a valid hexadecimal color; otherwise, `false`.
  static bool hexColor(String? input) =>
      _validate(input, AutoValidators.hexColorValidate);

  /// Validates a hexadecimal number format.
  ///
  /// This method checks if the input string matches the format for hexadecimal
  /// numbers defined in `AutoValidators.hexNumberValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The hexadecimal number string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is a valid hexadecimal number; otherwise, `false`.
  static bool hexNumber(String? input) =>
      _validate(input, AutoValidators.hexNumberValidate);

  /// Validates a latitude and longitude pair.
  ///
  /// This method checks if the input string contains a comma, indicating a
  /// pair of coordinates, and validates both latitude and longitude using
  /// respective validators.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The latitude and longitude string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string contains valid latitude and longitude; otherwise, `false`.
  static bool latLng(String? input) {
    if (input == null || !input.contains(',')) return false;
    final pair = input.split(',');
    return _validate(pair[0], AutoValidators.latValidate) &&
        _validate(pair[1], AutoValidators.longValidate);
  }

  /// Validates an MD5 hash.
  ///
  /// This method checks if the input string matches the MD5 hash format defined
  /// in `AutoValidators.md5Validate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The MD5 hash string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is a valid MD5 hash; otherwise, `false`.
  static bool md5(String? input) =>
      _validate(input, AutoValidators.md5Validate);

  /// Validates a Magnet URI format.
  ///
  /// This method checks if the input string matches the Magnet URI format defined
  /// in `AutoValidators.magnetURIValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The Magnet URI string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is a valid Magnet URI; otherwise, `false`.
  static bool magnetURI(String? input) =>
      _validate(input, AutoValidators.magnetURIValidate);

  /// Validates a MongoDB Object ID format.
  ///
  /// This method checks if the input string is a valid hexadecimal number and has
  /// a length of 24 characters.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The MongoDB Object ID string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is a valid MongoDB Object ID; otherwise, `false`.
  static bool mongoID(String? input) => hexNumber(input) && input!.length == 24;

  /// Validates for multibyte characters.
  ///
  /// This method checks if the input string contains multibyte characters using
  /// the multibyte validation defined in `AutoValidators.multibyteValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string contains multibyte characters; otherwise, `false`.
  static bool multibyte(String? input) =>
      _validate(input, AutoValidators.multibyteValidate);

  /// Validates if the input string is null or empty.
  ///
  /// This method checks if the input string is either null or contains only
  /// whitespace characters.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is null or empty; otherwise, `false`.
  static bool nullValue(String? input) => input == null || input.trim().isEmpty;

  /// Validates if the input string is non-null and not empty.
  ///
  /// This method checks if the input string is not null and does not contain only
  /// whitespace characters.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is non-null and not empty; otherwise, `false`.
  static bool nonNullValue(String? input) =>
      input != null && input.trim().isNotEmpty;

  /// Validates if two objects are of the same type.
  ///
  /// This method checks whether the runtime types of the provided objects,
  /// `obj1` and `obj2`, are identical.
  ///
  /// **Parameters:**
  /// - [obj1] (`dynamic`): The first object to compare.
  /// - [obj2] (`dynamic`): The second object to compare.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if both objects are of the same type; otherwise, `false`.
  static bool sameType(dynamic obj1, dynamic obj2) =>
      obj1.runtimeType == obj2.runtimeType;

  /// Validates if two objects are equal.
  ///
  /// This method checks if the value of `obj1` is equal to the value of `obj2`.
  ///
  /// **Parameters:**
  /// - [obj1] (`dynamic`): The first object to compare.
  /// - [obj2] (`dynamic`): The second object to compare.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if both objects are equal; otherwise, `false`.
  static bool match(dynamic obj1, dynamic obj2) => obj1 == obj2;

  /// Validates if the input string meets the minimum length requirement.
  ///
  /// This method checks if the trimmed length of the input string is greater than
  /// or equal to the specified minimum length.
  ///
  /// **Parameters:**
  /// - [string] (`String?`): The string to validate.
  /// - [min] (`int?`): The minimum length that the string must meet.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string meets the minimum length; otherwise, `false`.
  static bool minLength(String? string, int min) =>
      string != null && string.trim().length >= min;

  /// Validates if the input string meets the maximum length requirement.
  ///
  /// This method checks if the trimmed length of the input string is less than
  /// or equal to the specified maximum length.
  ///
  /// **Parameters:**
  /// - [string] (`String?`): The string to validate.
  /// - [max] (`int?`): The maximum length that the string must not exceed.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string meets the maximum length; otherwise, `false`.
  static bool maxLength(String? string, int max) =>
      string != null && string.trim().length <= max;

  /// Validates a Bank Identifier Code (BIC).
  ///
  /// This method checks if the input string matches the BIC format defined in
  /// `AutoValidators.bicValidate`.
  ///
  /// **Parameters:**
  /// - [input] (`String?`): The BIC string to validate.
  ///
  /// **Returns:**
  /// - `bool?`: `true` if the string is a valid BIC; otherwise, `false`.
  static bool bic(String? input) =>
      _validate(input, AutoValidators.bicValidate);
}
