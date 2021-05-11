import 'auto_validators.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

class AutoValidate {
  /// User Name Validator
  static bool userName(String input) {
    return AutoValidators.userNameValidate.hasMatch(input);
  }

  /// Password Validator
  static bool password(String input) {
    return AutoValidators.passwordValidate.hasMatch(input);
  }

  /// Strong Password Validator
  static bool passwordStrong(String input) {
    return AutoValidators.passwordStrongValidate.hasMatch(input);
  }

  /// Email Validator
  static bool email(String input) {
    return AutoValidators.emailValidate.hasMatch(input);
  }

  /// PhoneNumber Validator
  static bool phone(String input) {
    return AutoValidators.phoneNumberValidate.hasMatch(input);
  }

  /// Arabic Input Validator
  static bool inputArabic(String input) {
    return AutoValidators.inputArabicValidate.hasMatch(input);
  }

  /// Credit Card Validator
  static bool creditCard(String input) {
    return AutoValidators.creditCardValidate.hasMatch(input);
  }

  /// SSN Validator
  static bool ssn(String input) {
    return AutoValidators.ssnValidate.hasMatch(input);
  }

  /// International Phone Number Validator
  static bool phoneInternational(String input) {
    return AutoValidators.internationalPhoneNumberValidate.hasMatch(input);
  }

  /// Passport Validator
  static bool passport(String input) {
    return AutoValidators.passportValidate.hasMatch(input);
  }

  /// Date (MMDDYYYY) Validator
  static bool dateMMDDYYYY(String input) {
    return AutoValidators.dateMMDDYYYYValidate.hasMatch(input);
  }

  /// Date (YYYYMMDD) Validator
  static bool dateYYYYMMDD(String input) {
    return AutoValidators.dateYYYYMMDDValidate.hasMatch(input);
  }

  /// IPV4 Validator
  static bool ipv4(String input) {
    return AutoValidators.ipv4Validate.hasMatch(input);
  }

  /// IPV6 Validator
  static bool ipv6(String input) {
    return AutoValidators.ipv6Validate.hasMatch(input);
  }

  /// Alphanumeric Validator
  static bool alphanumeric(String input) {
    return AutoValidators.alphanumericValidate.hasMatch(input);
  }

  /// Alphanumeric With Spaces Validator
  static bool alphanumericWithSpaces(String input) {
    return AutoValidators.alphanumericWithSpacesValidate.hasMatch(input);
  }

  /// Alphabet Validator
  static bool alphabet(String input) {
    return AutoValidators.alphabetValidate.hasMatch(input);
  }

  /// LowerCase Validator
  static bool lowerCase(String input) {
    return AutoValidators.lowerCaseValidate.hasMatch(input);
  }

  /// UpperCase Validator
  static bool upperCase(String input) {
    return AutoValidators.upperCaseValidate.hasMatch(input);
  }

  /// Digits Validator
  static bool digits(String input) {
    return AutoValidators.digitsValidate.hasMatch(input);
  }

  /// Decimals Validator
  static bool decimals(String input) {
    return AutoValidators.decimalsValidate.hasMatch(input);
  }

  /// Signed Decimals Validator
  static bool decimalsSigned(String input) {
    return AutoValidators.decimalsSignedValidate.hasMatch(input);
  }

  /// URL Validator
  static bool url(String input) {
    return AutoValidators.urlValidate.hasMatch(input);
  }

  /// Base64 Validator
  static bool base64(String input) {
    if (input != null && input.length % 4 != 0 ||
        AutoValidators.base64Validate.hasMatch(input)) {
      return false;
    }
    var firstPaddingChar = input.indexOf("=");
    return firstPaddingChar == -1 ||
        firstPaddingChar == input.length - 1 ||
        (firstPaddingChar == input.length - 2 &&
            input[input.length - 1] == '=');
  }

  /// Base32 Validator
  static bool base32(String input) {
    if (input.toString().length > 0 &&
        input.toString().length % 8 == 0 &&
        AutoValidators.base32Validate.hasMatch(input)) {
      return true;
    } else {
      return false;
    }
  }

  /// Base58 Validator
  static bool base58(String input) {
    return AutoValidators.base58Validate.hasMatch(input);
  }

  /// ASCII Validator
  static bool ascii(String input) {
    return AutoValidators.asciiValidate.hasMatch(input);
  }

  /// Byte Length Validator That Check String's Length (In Bytes) In A Range.
  static bool byteLength(String string, {min = 0, max}) {
    var len = Uri.encodeFull(string).split(r'/%..|./').length - 1;
    return len >= min && (max == null || len <= max);
  }

  /// Capitalized Validator
  static bool capitalized(String input) {
    var capitalizedFirst = input.toString()[0].toUpperCase();
    var capitalized = "$capitalizedFirst${input.toString().substring(1)}";
    return input == capitalized;
  }

  /// Emoji Validator
  static bool emoji(String input) {
    return AutoValidators.emojiValidate.hasMatch(input);
  }

  /// JWT Validator
  static bool jwt(String input) {
    return AutoValidators.jwtValidate.hasMatch(input);
  }

  /// ISIN Validator
  static bool isin(String input) {
    if (!AutoValidators.isinValidate.hasMatch(input)) {
      return false;
    }
    var checksumStr = input.replaceAll(
        r"/[A-Z]/g",
        input.runes
            .map((chars) => int.parse(String.fromCharCode(chars)))
            .toString());

    var sum = 0;
    var digit, tmpNum, shouldDouble = true;
    for (var i = checksumStr.length - 2; i >= 0; i--) {
      digit = checksumStr.substring(i, (i + 1));
      tmpNum = int.parse(digit, radix: 10);
      if (shouldDouble) {
        tmpNum *= 2;
        if (tmpNum >= 10) {
          sum += tmpNum + 1;
        } else {
          sum += tmpNum;
        }
      } else {
        sum += tmpNum;
      }
      shouldDouble = !shouldDouble;
    }

    return int.parse(input.substring(input.length - 1), radix: 10) ==
        (10000 - sum) % 10;
  }

  /// ISBN Validator (10 - 13)
  static bool isbn(String input, [version]) {
    if (version == null) {
      return isbn(input, '10') || isbn(input, '13');
    }

    version = version.toString();

    String sanitized = input.replaceAll(RegExp(r'[\s-]+'), '');
    int checksum = 0;

    if (version == '10') {
      if (!AutoValidators.isbn10Validate.hasMatch(sanitized)) {
        return false;
      }
      for (int i = 0; i < 9; i++) {
        checksum += (i + 1) * int.parse(sanitized[i]);
      }
      if (sanitized[9] == 'X') {
        checksum += 10 * 10;
      } else {
        checksum += 10 * int.parse(sanitized[9]);
      }
      return (checksum % 11 == 0);
    } else if (version == '13') {
      if (!AutoValidators.isbn13Validate.hasMatch(sanitized)) {
        return false;
      }
      var factor = [1, 3];
      for (int i = 0; i < 12; i++) {
        checksum += factor[i % 2] * int.parse(sanitized[i]);
      }
      return (int.parse(sanitized[12]) - ((10 - (checksum % 10)) % 10) == 0);
    }

    return false;
  }

  /// MAC Address Validator
  static bool macAddress(String input, {noColons}) {
    if (noColons == true) {
      return AutoValidators.macAddressNoColonsValidate.hasMatch(input);
    }

    return AutoValidators.macAddressValidate.hasMatch(input) ||
        AutoValidators.macAddressWithHyphenValidate.hasMatch(input) ||
        AutoValidators.macAddressWithSpacesValidate.hasMatch(input);
  }

  /// Hexadecimal Color Validator
  static bool hexColor(String input) {
    return AutoValidators.hexColorValidate.hasMatch(input);
  }

  /// Hexadecimal Number Validator
  static bool hexNumber(String input) {
    return AutoValidators.hexNumberValidate.hasMatch(input);
  }

  /// Latitude and Longitude Validator
  static bool latLng(String input) {
    if (!input.contains(',')) {
      return false;
    }
    var pair = input.split(',');
    return AutoValidators.latValidate.hasMatch(pair[0]) &&
        AutoValidators.longValidate.hasMatch(pair[1]);
  }

  /// MD5 Hash Validator
  static bool md5(String input) {
    return AutoValidators.md5Validate.hasMatch(input);
  }

  /// Magnet URI Validator
  static bool magnetURI(String input) {
    return AutoValidators.magnetURIValidate.hasMatch(input);
  }

  /// Mongo ID Validator
  static bool mongoID(String input) {
    return hexNumber(input) && input.length == 24;
  }

  /// Multibyte Validator
  static bool multibyte(String input) {
    return AutoValidators.multibyteValidate.hasMatch(input);
  }

  /// Null Validator
  static bool nullValue(String input) {
    return input.trim().isEmpty || input.length == 0;
  }

  /// Non-Null Validator
  static bool nonNullValue(String input) {
    return input.trim().isNotEmpty || input.length != 0;
  }

  /// SameType Validator
  static bool sameType(obj1, obj2) {
    return obj1.runtimeType == obj2.runtimeType;
  }

  /// Match Validator
  static bool match(obj1, obj2) {
    return obj1 == obj2;
  }

  /// MinLength Validator
  static bool minLength(String string, int min) {
    return string.trim().length >= min;
  }

  /// MaxLength Validator
  static bool maxLength(String string, int max) {
    return string.trim().length <= max;
  }

  /// BIC Validator
  static bool bic(String input) {
    return AutoValidators.bicValidate.hasMatch(input);
  }
}
