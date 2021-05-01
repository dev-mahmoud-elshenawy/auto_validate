import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_validate.freezed.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

@freezed
abstract class AutoValidators with _$AutoValidate {
  const factory AutoValidators(String input) = Input;

  // User Validate :-

  /// It Contains Alphanumeric, underscores and hyphens and its long between 3 to 16 characters.
  static RegExp userNameValidate = RegExp(r'^[a-z0-9_-]{3,16}$');

  /// It Contains at least 1 lowerCase letter, upperCase letter, number and 8 characters long.
  static RegExp passwordValidate =
      RegExp(r'(?=(.*[0-9]))((?=.*[A-Za-z0-9])(?=.*[A-Z])(?=.*[a-z]))^.{8,}$');

  ///  It Contains at least 1 lowerCase letter, upperCase letter, number, special character and 8 characters long.
  static RegExp passwordStrongValidate = RegExp(
      r'''(?=(.*[0-9]))(?=.*[\!@#$%^&*()\\[\]{}\-_+=~`|:;"'<>,./?])(?=.*[a-z])(?=(.*[A-Z]))(?=(.*)).{8,}''');

  /// It Contains email Format Correctly.
  static RegExp emailValidate = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

  /// It Contains Phone Number Format Correctly.
  static RegExp phoneNumberValidate =
      RegExp(r'(^((?:[+?0?0?966]+)(?:\s?\d{2})(?:\s?\d{7}))$)');

  /// It Contains International Phone Number Format Correctly.
  static RegExp internationalPhoneNumberValidate = RegExp(
      r'\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1)\d{1,14}$');

  // -----------------------------------------------------------------------------------------------------------------------------

  // Identity Validate :-

  /// It Contains Credit Card Format Correctly.
  static RegExp creditCardValidate = RegExp(
      r'^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6011[0-9]{12}|622((12[6-9]|1[3-9][0-9])|([2-8][0-9][0-9])|(9(([0-1][0-9])|(2[0-5]))))[0-9]{10}|64[4-9][0-9]{13}|65[0-9]{14}|3(?:0[0-5]|[68][0-9])[0-9]{11}|3[47][0-9]{13})*$');

  /// It Contains SNN (Social Security Number) Format Correctly.
  static RegExp ssnValidate = RegExp(r'^([0-9]{3}[-]*[0-9]{2}[-]*[0-9]{4})*$');

  /// It Contains Passport Format Correctly.
  static RegExp passportValidate = RegExp(r'^(?!^0+$)[a-zA-Z0-9]{3,20}$');

  /// It Contains ISIN (International Securities Identification Number) Format Correctly.
  static RegExp isinValidate = RegExp(r'/^[A-Z]{2}[0-9A-Z]{9}[0-9]$/');

  /// It Contains ISBN10 (International Standard Book Number - Version 10) Format Correctly.
  static RegExp isbn10Validate = RegExp(r'^(?:[0-9]{9}X|[0-9]{10})$');

  /// It Contains ISBN13 (International Standard Book Number - Version 13) Format Correctly.
  static RegExp isbn13Validate = RegExp(r'^(?:[0-9]{13})$');

  /// It Contains BIC (Bank Identifier Code) Format Correctly.
  static RegExp bicValidate = RegExp(r'/^[A-z]{4}[A-z]{2}\w{2}(\w{3})?$/');

  // -----------------------------------------------------------------------------------------------------------------------------

  // Date Validate :-

  /// It Contains Date Format Correctly. (Validate The Calendar Date In MM/DD/YYYY).
  static RegExp dateMMDDYYYYValidate = RegExp(
      r'^((0?[1-9]|1[012])[- /.](0?[1-9]|[12][0-9]|3[01])[- /.](19|20)?[0-9]{2})*$');

  /// It Contains Date Format Correctly. (Validate The Calendar Date In YYYY/MM/DD).
  static RegExp dateYYYYMMDDValidate = RegExp(
      r'^((19|20)?[0-9]{2}[- /.](0?[1-9]|1[012])[- /.](0?[1-9]|[12][0-9]|3[01]))*$');

  // -----------------------------------------------------------------------------------------------------------------------------

  // Internet Validate :-

  /// It Contains IpV4 (Internet Protocol Version 4) Format Correctly.
  static RegExp ipV4Validate = RegExp(
      r'^((?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))*$');

  /// It Contains IpV6 (Internet Protocol Version 6) Format Correctly.
  static RegExp ipV6Validate = RegExp(
      r'(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))');

  /// /// It Contains URL Format Correctly.
  static RegExp urlValidate = RegExp(
      r'(https?:\/\/)?(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)');

  /// It Contains JWT (Json Web Token) Format Format Correctly.
  static RegExp jwtValidate = RegExp(
      r'/^([A-Za-z0-9\-_~+\/]+[=]{0,2})\.([A-Za-z0-9\-_~+\/]+[=]{0,2})(?:\.([A-Za-z0-9\-_~+\/]+[=]{0,2}))?$/');

  /// It Contains ASCII (American Standard Code for Information Interchange) Format Format Correctly.
  static RegExp asciiValidate = RegExp(r'/^[\x00-\x7F]+$/');

  /// It Contains MAC Address (Media Access Control) Format Correctly.
  static RegExp macAddressValidate =
      RegExp(r'/^([0-9a-fA-F][0-9a-fA-F]:){5}([0-9a-fA-F][0-9a-fA-F])$/');

  /// It Contains MAC Address (Media Access Control) No Colons Format Correctly.
  static RegExp macAddressNoColonsValidate = RegExp(r'/^([0-9a-fA-F]){12}$/');

  /// It Contains MAC Address With Hyphen Format Correctly.
  static RegExp macAddressWithHyphenValidate =
      RegExp(r'/^([0-9a-fA-F][0-9a-fA-F]-){5}([0-9a-fA-F][0-9a-fA-F])$/');

  /// It Contains MAC Address With Spaces Format Correctly.
  static RegExp macAddressWithSpacesValidate =
      RegExp(r'/^([0-9a-fA-F][0-9a-fA-F]\s){5}([0-9a-fA-F][0-9a-fA-F])$/');

  /// It Contains Magnet URI Format Correctly.
  static RegExp magnetURIValidate =
      RegExp(r'/^magnet:\?xt=urn:[a-z0-9]+:[a-z0-9]{32,40}&dn=.+&tr=.+$/i');

  // -----------------------------------------------------------------------------------------------------------------------------

  // Common Validate :-
  /// It Contains Alphanumeric Format Correctly.
  static RegExp alphanumericValidate = RegExp(r'^[a-zA-Z0-9]*$');

  /// It Contains Alphanumeric with Spaces Format Correctly.
  static RegExp alphanumericWithSpacesValidate = RegExp(r'^[a-zA-Z0-9 ]*$');

  /// It Contains Alphabet Format Correctly.
  static RegExp alphabetValidate = RegExp(r'^[a-zA-Z]*$');

  /// It Contains LowerCase Format Correctly.
  static RegExp lowerCaseValidate = RegExp(r'^[a-z]*$');

  /// It Contains UpperCase Format Correctly.
  static RegExp upperCaseValidate = RegExp(r'^[A-Z]*$');

  /// It Contains Digits Format Correctly.
  static RegExp digitsValidate = RegExp(r'^[0-9]*$');

  /// It Contains Decimals Format Correctly.
  static RegExp decimalsValidate = RegExp(r'^\d*(\.\d+)?$');

  /// It Contains Signed Decimals Format Correctly.
  static RegExp signedDecimalsValidate = RegExp(r'^[-+]?\d*(\.\d+)?$');

  /// It Contains Input Arabic Format Correctly.
  static RegExp inputArabicValidate =
      RegExp(r'^[\u0621-\u064A\u0660-\u0669 ]+$');

  /// It Contains Base64 Format Format Correctly.
  static RegExp base64Validate = RegExp(r'/[^A-Z0-9+\/=]/i');

  /// It Contains Base32 Format Format Correctly.
  static RegExp base32Validate = RegExp(r'/^[A-Z2-7]+=*$/');

  /// It Contains Base58 Format Format Correctly.
  static RegExp base58Validate = RegExp(r'/^[A-HJ-NP-Za-km-z1-9]*$/');

  /// It Contains Emoji Format Format Correctly.
  static RegExp emojiValidate = RegExp(
      r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])');

  /// It Contains Hexadecimal Color Format Format Correctly.
  static RegExp hexColorValidate = RegExp(r'/^#?([0-9A-F]{3}|[0-9A-F]{6})$/i');

  /// It Contains Hexadecimal Number Format Format Correctly.
  static RegExp hexNumberValidate = RegExp(r'/^[0-9A-F]+$/i');

  /// It Contains Latitude Format Format Correctly.
  static RegExp latValidate =
      RegExp(r'/^\(?[+-]?(90(\.0+)?|[1-8]?\d(\.\d+)?)$/');

  /// It Contains Longitude Format Format Correctly.
  static RegExp longValidate =
      RegExp(r'/^\s?[+-]?(180(\.0+)?|1[0-7]\d(\.\d+)?|\d{1,2}(\.\d+)?)\)?$/');

  /// It Contains MD5 (Message-Digest Algorithm) Hash Format Correctly.
  static RegExp md5Validate =
      RegExp(r'/^\s?[+-]?(180(\.0+)?|1[0-7]\d(\.\d+)?|\d{1,2}(\.\d+)?)\)?$/');

  /// It Contains Multibyte Character Sets Format Correctly.
  static RegExp multibyteValidate = RegExp(r'[^\x00-\x7F]');

// -----------------------------------------------------------------------------------------------------------------------------

}
