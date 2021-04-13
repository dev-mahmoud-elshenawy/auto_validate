import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_validate.freezed.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

@freezed
abstract class AutoValidate with _$AutoValidate {
  const factory AutoValidate(String input) = Input;

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

// -----------------------------------------------------------------------------------------------------------------------------

}
