import '../auto_validate.dart';

/// An extension on [String?] that provides convenient methods for validation
/// using the [AutoValidate] class.
///
/// This extension allows you to validate various input formats in a more
/// readable and fluent manner, making it easier to implement in your
/// application.
extension StringValidationExtension on String? {
  /// Validates if the string is a valid username.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the username is valid; otherwise, `false`.
  bool get isValidUsername => AutoValidate.userName(this);

  /// Validates if the string is a valid password.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the password is valid; otherwise, `false`.
  bool get isValidPassword => AutoValidate.password(this);

  /// Validates if the string is a strong password.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the strong password is valid; otherwise, `false`.
  bool get isValidStrongPassword => AutoValidate.passwordStrong(this);

  /// Validates if the string is a valid email address.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the email format is valid; otherwise, `false`.
  bool get isValidEmail => AutoValidate.email(this);

  /// Validates if the string is a valid phone number.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the phone number is valid; otherwise, `false`.
  bool get isValidPhone => AutoValidate.phone(this);

  /// Validates if the string contains valid Arabic characters.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the input contains valid Arabic characters; otherwise, `false`.
  bool get isValidArabicInput => AutoValidate.inputArabic(this);

  /// Validates if the string is a valid credit card number.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the credit card number is valid; otherwise, `false`.
  bool get isValidCreditCard => AutoValidate.creditCard(this);

  /// Validates if the string is a valid Social Security Number (SSN).
  ///
  /// **Returns:**
  /// - `bool`: `true` if the SSN is valid; otherwise, `false`.
  bool get isValidSSN => AutoValidate.ssn(this);

  /// Validates if the string is a valid international phone number.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the number is valid in an international format; otherwise, `false`.
  bool get isValidInternationalPhone => AutoValidate.phoneInternational(this);

  /// Validates if the string is a valid passport number.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the passport number is valid; otherwise, `false`.
  bool get isValidPassport => AutoValidate.passport(this);

  /// Validates if the string is a valid date in MM/DD/YYYY format.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the date matches the MM/DD/YYYY format; otherwise, `false`.
  bool get isValidDateMMDDYYYY => AutoValidate.dateMMDDYYYY(this);

  /// Validates if the string is a valid date in YYYY/MM/DD format.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the date matches the YYYY/MM/DD format; otherwise, `false`.
  bool get isValidDateYYYYMMDD => AutoValidate.dateYYYYMMDD(this);

  /// Validates if the string is a valid IPv4 address.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the IPv4 address is valid; otherwise, `false`.
  bool get isValidIPv4 => AutoValidate.ipv4(this);

  /// Validates if the string is a valid IPv6 address.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the IPv6 address is valid; otherwise, `false`.
  bool get isValidIPv6 => AutoValidate.ipv6(this);

  /// Validates if the string is alphanumeric.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains only alphanumeric characters; otherwise, `false`.
  bool get isAlphanumeric => AutoValidate.alphanumeric(this);

  /// Validates if the string is alphanumeric and may include spaces.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is valid; otherwise, `false`.
  bool get isAlphanumericWithSpaces =>
      AutoValidate.alphanumericWithSpaces(this);

  /// Validates if the string contains only alphabetic characters.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is alphabetic; otherwise, `false`.
  bool get isAlphabetic => AutoValidate.alphabet(this);

  /// Validates if the string contains only lowercase characters.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is entirely lowercase; otherwise, `false`.
  bool get isLowerCase => AutoValidate.lowerCase(this);

  /// Validates if the string contains only uppercase characters.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is entirely uppercase; otherwise, `false`.
  bool get isUpperCase => AutoValidate.upperCase(this);

  /// Validates if the string contains only digits.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains only digits; otherwise, `false`.
  bool get isDigits => AutoValidate.digits(this);

  /// Validates if the string conforms to decimal format.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid decimal number; otherwise, `false`.
  bool get isDecimals => AutoValidate.decimals(this);

  /// Validates if the string conforms to signed decimal format.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid signed decimal number; otherwise, `false`.
  bool get isDecimalsSigned => AutoValidate.decimalsSigned(this);

  /// Validates if the string is a valid URL.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the URL is valid; otherwise, `false`.
  bool get isValidURL => AutoValidate.url(this);

  /// Validates if the string is a valid Base64 encoded string.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid Base64 encoded string; otherwise, `false`.
  bool get isBase64 => AutoValidate.base64(this);

  /// Validates if the string is a valid Base32 encoded string.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid Base32 encoded string; otherwise, `false`.
  bool get isBase32 => AutoValidate.base32(this);

  /// Validates if the string is a valid Base58 encoded string.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid Base58 encoded string; otherwise, `false`.
  bool get isBase58 => AutoValidate.base58(this);

  /// Validates if the string contains only ASCII characters.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains only ASCII characters; otherwise, `false`.
  bool get isASCII => AutoValidate.ascii(this);

  /// Validates the byte length of the string.
  ///
  /// **Parameters:**
  /// - [min] (`int`, optional): The minimum byte length. Defaults to 0.
  /// - [max] (`int`, optional): The maximum byte length.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the byte length is within the specified range; otherwise, `false`.
  bool byteLength({int min = 0, int? max}) =>
      AutoValidate.byteLength(this, min: min, max: max);

  /// Validates if the string is capitalized (first letter uppercase).
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is capitalized; otherwise, `false`.
  bool get isCapitalized => AutoValidate.capitalized(this);

  /// Validates if the string contains emoji characters.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains emojis; otherwise, `false`.
  bool get hasEmoji => AutoValidate.emoji(this);

  /// Validates if the string is a valid JSON Web Token (JWT).
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid JWT; otherwise, `false`.
  bool get isValidJWT => AutoValidate.jwt(this);

  /// Validates if the string is a valid International Securities Identification Number (ISIN).
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid ISIN; otherwise, `false`.
  bool get isValidISIN => AutoValidate.isin(this);

  /// Validates if the string is a valid International Securities Identification Number (ISIN).
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid ISIN; otherwise, `false`.
  bool get isValidIsin => AutoValidate.isin(this);

  /// Validates if the string is a valid International Standard Book Number (ISBN).
  ///
  /// **Parameters:**
  /// - [version] (`String`, optional): The version of the ISBN ('10' or '13'). Defaults to check both.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid ISBN; otherwise, `false`.
  bool isValidIsbn([String version = '']) => AutoValidate.isbn(this, version);

  /// Validates if the string is a valid MAC address.
  ///
  /// **Parameters:**
  /// - [noColons] (`bool`, optional): If `true`, validates without colons.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid MAC address; otherwise, `false`.
  bool isValidMacAddress({bool noColons = false}) =>
      AutoValidate.macAddress(this, noColons: noColons);

  /// Validates if the string is a valid hexadecimal color code.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid hexadecimal color; otherwise, `false`.
  bool get isValidHexColor => AutoValidate.hexColor(this);

  /// Validates if the string is a valid hexadecimal number.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid hexadecimal number; otherwise, `false`.
  bool get isValidHexNumber => AutoValidate.hexNumber(this);

  /// Validates if the string contains a valid latitude and longitude pair.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains valid latitude and longitude; otherwise, `false`.
  bool get isValidLatLng => AutoValidate.latLng(this);

  /// Validates if the string is a valid MD5 hash.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid MD5 hash; otherwise, `false`.
  bool get isValidMd5 => AutoValidate.md5(this);

  /// Validates if the string is a valid Magnet URI.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid Magnet URI; otherwise, `false`.
  bool get isValidMagnetURI => AutoValidate.magnetURI(this);

  /// Validates if the string is a valid MongoDB Object ID.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid MongoDB Object ID; otherwise, `false`.
  bool get isValidMongoID => AutoValidate.mongoID(this);

  /// Validates if the string contains multibyte characters.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string contains multibyte characters; otherwise, `false`.
  bool get isValidMultibyte => AutoValidate.multibyte(this);

  /// Validates if the string is null or empty.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is null or empty; otherwise, `false`.
  bool get isNullValue => AutoValidate.nullValue(this);

  /// Validates if the string is non-null and not empty.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is non-null and not empty; otherwise, `false`.
  bool get isNonNullValue => AutoValidate.nonNullValue(this);

  /// Validates if the string meets the minimum length requirement.
  ///
  /// **Parameters:**
  /// - [min] (`int`): The minimum length that the string must meet.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string meets the minimum length; otherwise, `false`.
  bool isMinLength(int min) => AutoValidate.minLength(this, min);

  /// Validates if the string meets the maximum length requirement.
  ///
  /// **Parameters:**
  /// - [max] (`int`): The maximum length that the string must not exceed.
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string meets the maximum length; otherwise, `false`.
  bool isMaxLength(int max) => AutoValidate.maxLength(this, max);

  /// Validates if the string is a valid Bank Identifier Code (BIC).
  ///
  /// **Returns:**
  /// - `bool`: `true` if the string is a valid BIC; otherwise, `false`.
  bool get isValidBic => AutoValidate.bic(this);
}
