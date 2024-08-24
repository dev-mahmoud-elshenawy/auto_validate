import 'package:auto_validate/auto_validate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' show FormFieldValidator;

/// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)
///
///
/// A class that provides various form field validators for use in Flutter applications.
///
/// This class allows developers to easily validate user input in forms by providing
/// a set of pre-defined validators such as required fields, length checks, pattern matching,
/// and more. Each validator returns a nullable error message string, which can be displayed
/// to the user if validation fails.
class FormValidator {
  /// A base validator function that returns a nullable string for error messages.
  ///
  /// This function takes a validation logic as a parameter and an error message
  /// that is displayed when validation fails. It ensures that the input value is
  /// processed appropriately to determine if it meets the specified validation criteria.
  static FormFieldValidator<String?> _baseValidator(
    bool Function(String value) validate, {
    required String errorMessage,
  }) =>
      (value) {
        value ??= ''; // Ensure the value is not null.
        return validate(value)
            ? null
            : errorMessage; // Return null if valid, else return the error message.
      };

  /// Validator for non-null required fields.
  ///
  /// Returns a validator that checks if the input is not empty.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.required(),
  /// )
  /// ```
  static FormFieldValidator<String?> required({
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) => value.isNotEmpty, // Check for non-empty input.
        errorMessage:
            errorMessage ?? 'This field is required.', // Default error message.
      );

  /// Validator for minimum length of input.
  ///
  /// Returns a validator that checks if the input length is greater than or equal
  /// to the specified minimum length.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.minLength(minLength: 6),
  /// )
  /// ```
  static FormFieldValidator<String?> minLength({
    required int minLength,
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) => value.length >= minLength, // Validate based on length.
        errorMessage: errorMessage ??
            'Input must be at least $minLength characters long.', // Customizable error message.
      );

  /// Validator for maximum length of input.
  ///
  /// Returns a validator that checks if the input length is less than or equal
  /// to the specified maximum length.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.maxLength(maxLength: 20),
  /// )
  /// ```
  static FormFieldValidator<String?> maxLength({
    required int maxLength,
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) => value.length <= maxLength, // Validate based on length.
        errorMessage: errorMessage ??
            'Input must not exceed $maxLength characters.', // Customizable error message.
      );

  /// Validator based on a regular expression pattern.
  ///
  /// Returns a validator that checks if the input matches the specified pattern.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.pattern(pattern: r'^[a-zA-Z]+$'),
  /// )
  /// ```
  static FormFieldValidator<String?> pattern({
    required String pattern,
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) => RegExp(pattern).hasMatch(value), // Check regex match.
        errorMessage:
            errorMessage ?? 'Invalid input.', // Default error message.
      );

  /// Validator for validating email addresses.
  ///
  /// Returns a validator that uses the AutoValidate class to check if the input is a valid email.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.email(),
  /// )
  /// ```
  static FormFieldValidator<String?> email({
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) => AutoValidate.email(value), // Check for valid email.
        errorMessage:
            errorMessage ?? 'Invalid email address.', // Default error message.
      );

  /// Validator for validating passwords.
  ///
  /// Returns a validator that checks if the input meets the password criteria defined in the AutoValidate class.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.password(),
  /// )
  /// ```
  static FormFieldValidator<String?> password({
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) => AutoValidate.password(value),
        // Check for valid password.
        errorMessage: errorMessage ??
            'Invalid password format.', // Default error message.
      );

  /// Validator for checking password strength.
  ///
  /// Returns a validator that verifies if the password is strong enough according to the AutoValidate class.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.passwordStrong(),
  /// )
  /// ```
  static FormFieldValidator<String?> passwordStrong({
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) =>
            AutoValidate.passwordStrong(value), // Check for strong password.
        errorMessage: errorMessage ??
            'Password is not strong enough.', // Default error message.
      );

  /// Validator for validating phone numbers.
  ///
  /// Returns a validator that checks if the input is a valid phone number using the AutoValidate class.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.phone(),
  /// )
  /// ```
  static FormFieldValidator<String?> phone({
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) => AutoValidate.phone(value),
        // Check for valid phone number.
        errorMessage:
            errorMessage ?? 'Invalid phone number.', // Default error message.
      );

  /// Validator for validating international phone numbers.
  ///
  /// Returns a validator that checks if the input is a valid international phone number using the AutoValidate class.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.phoneInternational(),
  /// )
  /// ```
  static FormFieldValidator<String?> phoneInternational({
    String? errorMessage,
  }) =>
      _baseValidator(
        (value) => AutoValidate.phoneInternational(
            value), // Check for valid international phone number.
        errorMessage: errorMessage ??
            'Invalid international phone number.', // Default error message.
      );

  /// Combined Validator
  ///
  /// Returns a validator that checks multiple validators in sequence.
  ///
  /// If any validator fails, the corresponding error message is returned.
  ///
  /// Example:
  /// ```dart
  /// TextFormField(
  ///   validator: FormValidator.combination(validators: [
  ///     FormValidator.required(),
  ///     FormValidator.minLength(minLength: 6),
  ///   ]),
  /// )
  /// ```
  static FormFieldValidator<String?> combination({
    required List<FormFieldValidator<String?>> validators,
  }) {
    return (value) {
      for (final validator in validators) {
        final result = validator(value);
        if (result != null) return result;
      }
      return null;
    };
  }
}
