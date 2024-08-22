import 'package:auto_validate/auto_validate.dart';
import 'package:test/test.dart';

/// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)

void main() {
  group('FormValidator', () {
    test('required validator returns null for non-empty input', () {
      final validator = FormValidator.required();
      expect(validator('Test Input'), isNull);
    });

    test('required validator returns error message for empty input', () {
      final validator = FormValidator.required();
      expect(validator(''), equals('This field is required.'));
    });

    test('minLength validator returns null for valid length', () {
      final validator = FormValidator.minLength(minLength: 5);
      expect(validator('12345'), isNull);
    });

    test('minLength validator returns error message for short input', () {
      final validator = FormValidator.minLength(minLength: 5);
      expect(validator('123'),
          equals('Input must be at least 5 characters long.'));
    });

    test('maxLength validator returns null for valid length', () {
      final validator = FormValidator.maxLength(maxLength: 5);
      expect(validator('12345'), isNull);
    });

    test('maxLength validator returns error message for long input', () {
      final validator = FormValidator.maxLength(maxLength: 5);
      expect(
          validator('123456'), equals('Input must not exceed 5 characters.'));
    });

    test('pattern validator returns null for valid pattern', () {
      final validator = FormValidator.pattern(pattern: r'^[a-zA-Z]+$');
      expect(validator('ValidInput'), isNull);
    });

    test('pattern validator returns error message for invalid pattern', () {
      final validator = FormValidator.pattern(pattern: r'^[a-zA-Z]+$');
      expect(validator('Invalid123'), equals('Invalid input.'));
    });

    test('email validator returns null for valid email', () {
      final validator = FormValidator.email();
      expect(validator('dev.m.elshenawy@icloud.com'), isNull);
    });

    test('email validator returns error message for invalid email', () {
      final validator = FormValidator.email();
      expect(validator('invalid-email'), equals('Invalid email address.'));
    });

    test('password validator returns null for valid password', () {
      final validator = FormValidator.password();
      expect(validator('@ValidPassword123'), isNull);
    });

    test('password validator returns error message for invalid password', () {
      final validator = FormValidator.password();
      expect(validator('short'), equals('Invalid password format.'));
    });

    test('phone validator returns null for valid phone number', () {
      final validator = FormValidator.phone();
      expect(validator('+201098415860'), isNull);
    });

    test('phone validator returns error message for invalid phone number', () {
      final validator = FormValidator.phone();
      expect(validator('invalid-phone'), equals('Invalid phone number.'));
    });

    test('combination validator returns null for all valid inputs', () {
      final validator = FormValidator.combination(validators: [
        FormValidator.required(),
        FormValidator.minLength(minLength: 5),
      ]);
      expect(validator('Valid Input'), isNull);
    });

    test('combination validator returns first error message for invalid inputs',
        () {
      final validator = FormValidator.combination(validators: [
        FormValidator.required(),
        FormValidator.minLength(minLength: 5),
      ]);
      expect(validator(''), equals('This field is required.'));
      expect(validator('123'),
          equals('Input must be at least 5 characters long.'));
    });
  });
}
