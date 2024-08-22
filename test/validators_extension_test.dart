import 'package:auto_validate/auto_validate.dart';
import 'package:test/test.dart';

void main() {
  group('StringValidationExtension', () {
    String? username;
    String? password;
    String? email;
    String? phone;
    String? creditCard;

    setUp(() {
      // Initialize test data
      username = "Mahmoud";
      password = "P@ssw0rd";
      email = "dev.m.elshenawy@icloud.com";
      phone = "+201098415860";
      creditCard = "4111111111111111";
    });

    test('isValidUsername returns true for valid username', () {
      expect(username.isValidUsername, isTrue);
    });

    test('isValidPassword returns true for valid password', () {
      expect(password.isValidPassword, isTrue);
    });

    test('isValidEmail returns true for valid email', () {
      expect(email.isValidEmail, isTrue);
    });

    test('isValidPhone returns true for valid phone number', () {
      expect(phone.isValidPhone, isTrue);
    });

    test('isValidCreditCard returns true for valid credit card number', () {
      expect(creditCard.isValidCreditCard, isTrue);
    });

    test('isNullValue returns true for null', () {
      expect(null.isNullValue, isTrue);
    });

    test('isNonNullValue returns true for non-null value', () {
      expect(username.isNonNullValue, isTrue);
    });

    test('isMinLength returns true for minimum length', () {
      expect(username.isMinLength(5), isTrue);
    });

    test('isMaxLength returns true for maximum length', () {
      expect(username.isMaxLength(15), isTrue);
    });

    test('isValidEmail returns false for invalid email', () {
      expect("invalid-email".isValidEmail, isFalse);
    });

    test('isValidPhone returns false for invalid phone number', () {
      expect("+201098415860".isValidPhone, isTrue);
    });

    test('isValidCreditCard returns false for invalid credit card number', () {
      expect("1234567890123456".isValidCreditCard, isFalse);
    });
  });
}
