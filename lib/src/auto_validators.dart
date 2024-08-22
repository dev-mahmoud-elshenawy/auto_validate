import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auto_validators.freezed.dart';

/// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)
///
///
/// A class that provides various validation regex patterns for different input types.
/// This class contains static regex patterns to validate usernames, passwords, emails, phone numbers, and more.
@immutable
@freezed
class AutoValidators with _$AutoValidators {
  AutoValidators._();

  /// Creates an instance of [AutoValidators].
  ///
  /// The [input] parameter is an optional string that can be validated
  /// using the various validation methods provided in this class.
  factory AutoValidators(String? input) = _input;

  /// Validates usernames.
  ///
  /// Usernames must be alphanumeric and can include underscores and hyphens.
  /// They must be between 3 to 16 characters long.
  static RegExp? userNameValidate = RegExp(r'^[a-zA-Z0-9_-]{3,16}$');

  /// Validates passwords.
  ///
  /// Passwords must contain at least one lowercase letter, one uppercase letter,
  /// one number, and be at least 8 characters long.
  static RegExp? passwordValidate =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$');

  /// Validates strong passwords.
  ///
  /// Strong passwords must contain at least one lowercase letter,
  /// one uppercase letter, one number, one special character,
  /// and be at least 8 characters long.
  static RegExp? passwordStrongValidate =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$');

  /// Validates email addresses.
  ///
  /// Ensures that the provided email address conforms to standard email format.
  static RegExp? emailValidate =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  /// Validates phone numbers.
  ///
  /// Ensures that the phone number is in the correct format for the specified region.
  static RegExp? phoneNumberValidate = RegExp(r'^\+?[0-9]\d{0,14}$');

  /// Validates international phone numbers.
  ///
  /// Ensures that the international phone number adheres to the specified format.
  static RegExp? internationalPhoneNumberValidate = RegExp(
      r'^\+?(?:\d{1,3})?\s?\(?\d{1,4}?\)?[\s.-]?\d{1,4}[\s.-]?\d{1,4}[\s.-]?\d{1,9}$');

  // Identity Validation

  /// Validates credit card numbers.
  ///
  /// Ensures that the credit card number is in a valid format for various card types
  /// such as Visa, MasterCard, American Express, and others.
  static RegExp? creditCardValidate = RegExp(
      r'^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6011[0-9]{12}|622[0-9]{12,15}|65[0-9]{14}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11})$');

  /// Validates Social Security Numbers (SSN).
  ///
  /// Ensures that the SSN is in the correct format, allowing for optional dashes.
  static RegExp? ssnValidate = RegExp(r'^\d{3}-?\d{2}-?\d{4}$');

  /// Validates passport numbers.
  ///
  /// Ensures that the passport number is alphanumeric and between 3 to 20 characters long.
  static RegExp? passportValidate = RegExp(r'^(?!^0+$)[a-zA-Z0-9]{3,20}$');

  /// Validates International Securities Identification Numbers (ISIN).
  ///
  /// Ensures that the ISIN format is correct, consisting of 2 letters followed by 9 alphanumeric characters and a check digit.
  static RegExp? isinValidate = RegExp(r'^[A-Z]{2}[0-9A-Z]{9}[0-9]$');

  /// Validates ISBN-10 numbers.
  ///
  /// Ensures that the ISBN-10 number is either 9 digits followed by 'X' or 10 digits.
  static RegExp isbn10Validate = RegExp(r'^(?:\d{9}X|\d{10})$');

  /// Validates ISBN-13 numbers.
  ///
  /// Ensures that the ISBN-13 number is exactly 13 digits.
  static RegExp isbn13Validate = RegExp(r'^(978|979)\d{10}$');

  /// Validates Bank Identifier Codes (BIC).
  ///
  /// Ensures that the BIC format consists of 4 letters, 2 letters, and optional 2 or 3 alphanumeric characters.
  static RegExp? bicValidate = RegExp(r'^[A-Z]{4}[A-Z]{2}[0-9A-Z]{0,3}$');

  /// Validates dates in MM/DD/YYYY format.
  ///
  /// Ensures that the provided date is valid according to the MM/DD/YYYY calendar format.
  static RegExp? dateMMDDYYYYValidate =
      RegExp(r'^(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])/(19|20)?\d{2}$');

  /// Validates dates in YYYY/MM/DD format.
  ///
  /// Ensures that the provided date is valid according to the YYYY/MM/DD calendar format.
  static RegExp? dateYYYYMMDDValidate =
      RegExp(r'^(19|20)?\d{2}/(0[1-9]|1[0-2])/(0[1-9]|[12][0-9]|3[01])$');

  /// Validates dates in DD/MM/YYYY format.
  ///
  /// Ensures that the provided date is valid according to the DD/MM/YYYY calendar format.
  static RegExp? dateDDMMYYYYValidate =
      RegExp(r'^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/(19|20)?\d{2}$');

  /// Validates IPv4 addresses.
  ///
  /// Ensures that the provided IP address is valid according to the IPv4 format.
  static RegExp? ipv4Validate = RegExp(
      r'^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$');

  /// Validates IPv6 addresses.
  ///
  /// Ensures that the provided IP address is valid according to the IPv6 format.
  static RegExp? ipv6Validate =
      RegExp(r'(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|'
          r'([0-9a-fA-F]{1,4}:){1,7}:|'
          r'([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|'
          r'([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|'
          r'([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|'
          r'([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|'
          r'([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|'
          r'[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|'
          r':((:[0-9a-fA-F]{1,4}){1,7}|:)|'
          r'fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|'
          r'::(ffff(:0{1,4}){0,1}:){0,1}'
          r'((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}'
          r'(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|'
          r'([0-9a-fA-F]{1,4}:){1,4}:'
          r'((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}'
          r'(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))$');

  /// Validates URLs.
  ///
  /// Ensures that the provided URL is valid according to the standard URL format.
  static RegExp? urlValidate = RegExp(
      r'^(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)$');

  /// Validates JWT (JSON Web Token) format.
  ///
  /// Ensures that the provided JWT is valid according to the JWT format.
  static RegExp? jwtValidate = RegExp(
      r'^([A-Za-z0-9\-_~+\/]+[=]{0,2})\.([A-Za-z0-9\-_~+\/]+[=]{0,2})(?:\.([A-Za-z0-9\-_~+\/]+[=]{0,2}))?$');

  /// Validates ASCII characters.
  ///
  /// Ensures that the provided input contains only ASCII characters.
  static RegExp? asciiValidate = RegExp(r'^[\x00-\x7F]+$');

  /// Validates UUID (Universally Unique Identifier) format.
  ///
  /// Ensures that the provided UUID is valid according to the UUID format.
  static RegExp? uuidValidate = RegExp(
      r'^[{(]?[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}[)}]?$');

  /// Validates MAC Address format.
  ///
  /// Ensures that the provided MAC address is valid according to the MAC address format.
  static RegExp? macAddressValidate =
      RegExp(r'^([0-9a-fA-F]{2}[:-]){5}([0-9a-fA-F]{2})$');

  /// Validates MAC Address without colons.
  ///
  /// Ensures that the provided MAC address is valid without colons.
  static RegExp? macAddressNoColonsValidate = RegExp(r'^[0-9a-fA-F]{12}$');

  /// Validates MAC Address with Hypens.
  ///
  /// Ensures that the provided MAC address is valid with Hypens.
  static RegExp? macAddressWithHyphenValidate =
      RegExp(r'^([0-9a-fA-F]{2}-){5}([0-9a-fA-F]{2})$');

  /// Validates MAC Address with spaces.
  ///
  /// Ensures that the provided MAC address is valid with spaces.
  static RegExp? macAddressWithSpacesValidate =
      RegExp(r'^([0-9a-fA-F]{2}\s){5}([0-9a-fA-F]{2})$');

  /// Validates Magnetic URI format.
  ///
  /// Ensures that the provided input is a valid magnetic URI.
  static RegExp? magnetURIValidate = RegExp(
      r'^magnet:\?xt=urn:[a-z0-9]+:[a-z0-9]{32,40}&dn=.+&tr=.+$',
      caseSensitive: false);

  /// Validates Alphanumeric Format Correctly.
  ///
  /// Ensures that the provided input contains only alphanumeric characters.
  static RegExp? alphanumericValidate = RegExp(r'^[a-zA-Z0-9]*$');

  /// Validates Alphanumeric With Spaces Format Correctly.
  ///
  /// Ensures that the provided input contains only alphanumeric characters and spaces.
  static RegExp? alphanumericWithSpacesValidate = RegExp(r'^[a-zA-Z0-9 ]*$');

  /// Validates Alphabet Format Correctly.
  ///
  /// Ensures that the provided input contains only alphabetic characters.
  static RegExp? alphabetValidate = RegExp(r'^[a-zA-Z]*$');

  /// Validates Alphabet With Lowercase Format Correctly.
  ///
  /// Ensures that the provided input contains only lowercase alphabetic characters.
  static RegExp? lowerCaseValidate = RegExp(r'^[a-z]*$');

  /// Validates Alphabet With Uppercase Format Correctly.
  ///
  /// Ensures that the provided input contains only uppercase alphabetic characters.
  static RegExp? upperCaseValidate = RegExp(r'^[A-Z]*$');

  /// Validates Digits Format Correctly.
  ///
  /// Ensures that the provided input contains only digits.
  static RegExp? digitsValidate = RegExp(r'^[0-9]*$');

  /// Validates Signed Digits Format Correctly.
  ///
  /// Ensures that the provided input contains only signed digits.
  static RegExp? decimalsValidate = RegExp(r'^[+-]?(\d+(\.\d+)?|\.\d+)$');

  /// Validates Signed Digits Format Correctly.
  ///
  /// Ensures that the provided input contains only signed digits.
  static RegExp? decimalsSignedValidate = RegExp(r'^[+-]?\d*(\.\d+)?$');

  /// Validates Arabic Format Correctly.
  ///
  /// Ensures that the provided input contains only Arabic characters.
  static RegExp? inputArabicValidate =
      RegExp(r'^[\u0621-\u064A\u0660-\u0669 ]+$');

  /// Validates Base64 Format Correctly.
  ///
  /// Ensures that the provided input is in Base64 format.
  static RegExp? base64Validate = RegExp(r'^[A-Za-z0-9+/]+={0,2}$');

  /// Validates Base32 Format Correctly.
  ///
  /// Ensures that the provided input is in Base32 format.
  static RegExp? base32Validate = RegExp(r'^[A-Z2-7]+=*$');

  /// Validates Base58 Format Correctly.
  ///
  /// Ensures that the provided input is in Base58 format.
  static RegExp? base58Validate = RegExp(r'^[A-HJ-NP-Za-km-z1-9]*$');

  /// Validates Emoji Format Correctly.
  ///
  /// Ensures that the provided input contains emojis.
  static RegExp? emojiValidate = RegExp(
      r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])');

  /// Validates Hexadecimal Color Format Correctly.
  ///
  /// Ensures that the provided input is in Hexadecimal color format.
  static RegExp? hexColorValidate =
      RegExp(r'^#?([0-9A-F]{3}|[0-9A-F]{6})$', caseSensitive: false);

  /// Validates Hexadecimal Number Format Correctly.
  ///
  /// Ensures that the provided input is in Hexadecimal number format.
  static RegExp? hexNumberValidate =
      RegExp(r'^[0-9A-F]+$', caseSensitive: false);

  /// Validates Latitude Format Correctly.
  ///
  /// Ensures that the provided input is in Latitude format.
  static RegExp? latValidate = RegExp(r'^[+-]?([90](\.0+)?|[1-8]?\d(\.\d+)?)$');

  /// Validates Longitude Format Correctly.
  ///
  /// Ensures that the provided input is in Longitude format.
  static RegExp? longValidate =
      RegExp(r'^[+-]?((180(\.0+)?)|((1[0-7][0-9]|[1-9]?\d)(\.\d+)?))$');

  /// Validates MD5 (Message-Digest Algorithm) Hash Format Correctly.
  ///
  /// Ensures that the provided input is in MD5 hash format.
  static RegExp? md5Validate = RegExp(r'^[a-fA-F0-9]{32}$');

  /// Validates Multibyte Format Correctly.
  ///
  /// Ensures that the provided input is in Multibyte format.
  static RegExp? multibyteValidate = RegExp(r'[^\x00-\x7F]');
}
