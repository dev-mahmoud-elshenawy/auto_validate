library auto_validate;

import 'package:auto_validate/auto_validate.dart';

export 'auto_validate.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

/// User Name Validator
bool isUserNameValid(String input) {
  return AutoValidate.userNameValidate.hasMatch(input);
}

/// Password Validator
bool isPasswordValid(String input) {
  return AutoValidate.passwordValidate.hasMatch(input);
}

/// Strong Password Validator
bool isPasswordStrongValid(String input) {
  return AutoValidate.passwordStrongValidate.hasMatch(input);
}

/// Email Validator
bool isEmailValid(String input) {
  return AutoValidate.emailValidate.hasMatch(input);
}

/// PhoneNumber Validator
bool isPhoneNumberValid(String input) {
  return AutoValidate.phoneNumberValidate.hasMatch(input);
}

/// Arabic Input Validator
bool isInputArabic(String input) {
  return AutoValidate.inputArabicValidate.hasMatch(input);
}

/// Credit Card Validator
bool isCreditCardValid(String input) {
  return AutoValidate.creditCardValidate.hasMatch(input);
}

/// SNN Validator
bool isSSNValid(String input) {
  return AutoValidate.ssnValidate.hasMatch(input);
}

/// International Phone Number Validator
bool isInternationalPhoneNumberValid(String input) {
  return AutoValidate.internationalPhoneNumberValidate.hasMatch(input);
}

/// Passport Validator
bool isPassportValid(String input) {
  return AutoValidate.passportValidate.hasMatch(input);
}

/// Date (MMDDYYYY) Validator
bool isDateMMDDYYYYValid(String input) {
  return AutoValidate.dateMMDDYYYYValidate.hasMatch(input);
}

/// Date (YYYYMMDD) Validator
bool isDateYYYYMMDDValid(String input) {
  return AutoValidate.dateYYYYMMDDValidate.hasMatch(input);
}

/// IPV4 Validator
bool isIPV4Valid(String input) {
  return AutoValidate.ipV4Validate.hasMatch(input);
}

/// IPV6 Validator
bool isIPV6Valid(String input) {
  return AutoValidate.ipV6Validate.hasMatch(input);
}

/// Alphanumeric Validator
bool isAlphanumericValid(String input) {
  return AutoValidate.alphanumericValidate.hasMatch(input);
}

/// Alphanumeric With Spaces Validator
bool isAlphanumericWithSpacesValid(String input) {
  return AutoValidate.alphanumericWithSpacesValidate.hasMatch(input);
}

/// Alphabet Validator
bool isAlphabetValid(String input) {
  return AutoValidate.alphabetValidate.hasMatch(input);
}

/// LowerCase Validator
bool isLowerCaseValid(String input) {
  return AutoValidate.lowerCaseValidate.hasMatch(input);
}

/// UpperCase Validator
bool isUpperCaseValid(String input) {
  return AutoValidate.upperCaseValidate.hasMatch(input);
}

/// Digits Validator
bool isDigitsValid(String input) {
  return AutoValidate.digitsValidate.hasMatch(input);
}

/// Decimals Validator
bool isDecimalsValid(String input) {
  return AutoValidate.decimalsValidate.hasMatch(input);
}

/// Signed Decimals Validator
bool isSignedDecimalsValid(String input) {
  return AutoValidate.signedDecimalsValidate.hasMatch(input);
}

/// URL Validator
bool isURLValid(String input) {
  return AutoValidate.urlValidate.hasMatch(input);
}
