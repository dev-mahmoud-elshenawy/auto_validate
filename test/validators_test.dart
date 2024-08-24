import 'package:auto_validate/auto_validate.dart';
import 'package:test/test.dart';

void main() {
  group('AutoValidators', () {
    test('Valid usernames', () {
      expect(AutoValidators.userNameValidate!.hasMatch('valid_user1'), isTrue);
      expect(AutoValidators.userNameValidate!.hasMatch('user-name'), isTrue);
      expect(AutoValidators.userNameValidate!.hasMatch('username'), isTrue);
    });

    test('Invalid usernames', () {
      expect(AutoValidators.userNameValidate!.hasMatch('us'), isFalse);
      expect(AutoValidators.userNameValidate!.hasMatch('user@name'), isFalse);
      expect(AutoValidators.userNameValidate!.hasMatch('user name'), isFalse);
      expect(AutoValidators.userNameValidate!.hasMatch(''), isFalse);
    });

    test('Valid passwords', () {
      expect(AutoValidators.passwordValidate!.hasMatch('Valid123'), isTrue);
      expect(AutoValidators.passwordValidate!.hasMatch('Password1'), isTrue);
    });

    test('Invalid passwords', () {
      expect(AutoValidators.passwordValidate!.hasMatch('short'), isFalse);
      expect(AutoValidators.passwordValidate!.hasMatch('12345678'), isFalse);
      expect(
          AutoValidators.passwordValidate!.hasMatch('alllowercase'), isFalse);
    });

    test('Valid strong passwords', () {
      expect(AutoValidators.passwordStrongValidate!.hasMatch('Str0ng!Pass'),
          isTrue);
      expect(AutoValidators.passwordStrongValidate!.hasMatch('P@ssw0rd123'),
          isTrue);
    });

    test('Invalid strong passwords', () {
      expect(
          AutoValidators.passwordStrongValidate!.hasMatch('WeakPass'), isFalse);
      expect(AutoValidators.passwordStrongValidate!.hasMatch('12345678!'),
          isFalse);
      expect(AutoValidators.passwordStrongValidate!.hasMatch('12345'), isFalse);
    });

    test('Valid email addresses', () {
      expect(
          AutoValidators.emailValidate!.hasMatch('test@example.com'), isTrue);
      expect(
          AutoValidators.emailValidate!.hasMatch('user.name+tag@example.co.uk'),
          isTrue);
    });

    test('Invalid email addresses', () {
      expect(AutoValidators.emailValidate!.hasMatch('plainaddress'), isFalse);
      expect(AutoValidators.emailValidate!.hasMatch('@missingusername.com'),
          isFalse);
      expect(AutoValidators.emailValidate!.hasMatch('username@.com'), isFalse);
    });

    test('Valid phone numbers', () {
      expect(
          AutoValidators.phoneNumberValidate!.hasMatch('+1234567890'), isTrue);
      expect(
          AutoValidators.phoneNumberValidate!.hasMatch('1234567890'), isTrue);
    });

    test('Invalid phone numbers', () {
      expect(AutoValidators.phoneNumberValidate!.hasMatch('123-456-7890'),
          isFalse);
      expect(
          AutoValidators.phoneNumberValidate!.hasMatch('abc1234567'), isFalse);
    });

    test('Valid credit card numbers', () {
      expect(AutoValidators.creditCardValidate!.hasMatch('4111111111111111'),
          isTrue);
      expect(AutoValidators.creditCardValidate!.hasMatch('5105105105105100'),
          isTrue);
    });

    test('Invalid credit card numbers', () {
      expect(AutoValidators.creditCardValidate!.hasMatch('1234567812345678'),
          isFalse);
      expect(AutoValidators.creditCardValidate!.hasMatch('4111-1111-1111-1111'),
          isFalse);
    });

    test('Valid SSN', () {
      expect(AutoValidators.ssnValidate!.hasMatch('123-45-6789'), isTrue);
      expect(AutoValidators.ssnValidate!.hasMatch('123456789'), isTrue);
    });

    test('Invalid SSN', () {
      expect(AutoValidators.ssnValidate!.hasMatch('123-456-78'), isFalse);
      expect(AutoValidators.ssnValidate!.hasMatch('abc-45-6789'), isFalse);
    });

    test('Valid passport numbers', () {
      expect(AutoValidators.passportValidate!.hasMatch('A123456789'), isTrue);
      expect(AutoValidators.passportValidate!.hasMatch('1234567890'), isTrue);
    });

    test('Invalid passport numbers', () {
      expect(AutoValidators.passportValidate!.hasMatch('A123456789'), isTrue);
      expect(AutoValidators.passportValidate!.hasMatch('A12345678901234567890'),
          isFalse);
    });

    test('Valid ISBN-13', () {
      expect(AutoValidators.isbn13Validate.hasMatch('9783161484100'), isTrue);
      expect(AutoValidators.isbn13Validate.hasMatch('1234567890123'), isFalse);
    });

    test('Invalid ISBN-10', () {
      expect(AutoValidators.isbn10Validate.hasMatch('0306406152'), isTrue);
      expect(AutoValidators.isbn10Validate.hasMatch('123456789'), isFalse);
    });

    test('Valid latitude values', () {
      expect(AutoValidators.latValidate!.hasMatch('45.123'), isTrue);
      expect(AutoValidators.latValidate!.hasMatch('180.0'), isFalse);
    });

    test('Invalid latitude values', () {
      expect(AutoValidators.latValidate!.hasMatch('91'), isFalse);
      expect(AutoValidators.latValidate!.hasMatch(''), isFalse);
    });

    test('Valid longitude values', () {
      expect(AutoValidators.longValidate!.hasMatch('180'), isTrue);
      expect(AutoValidators.longValidate!.hasMatch('-122.4194'), isTrue);
    });

    test('Invalid longitude values', () {
      expect(AutoValidators.longValidate!.hasMatch('181'), isFalse);
      expect(AutoValidators.longValidate!.hasMatch(''), isFalse);
    });

    test('Valid URLs', () {
      expect(
          AutoValidators.urlValidate!.hasMatch('http://example.com'), isTrue);
      expect(
          AutoValidators.urlValidate!.hasMatch('https://www.example.com/test'),
          isTrue);
    });

    test('Invalid URLs', () {
      expect(AutoValidators.urlValidate!.hasMatch('invalid-url'), isFalse);
      expect(AutoValidators.urlValidate!.hasMatch('http://.com'), isFalse);
    });

    test('Valid UUIDs', () {
      expect(
          AutoValidators.uuidValidate!
              .hasMatch('123e4567-e89b-12d3-a456-426614174000'),
          isTrue);
      expect(
          AutoValidators.uuidValidate!
              .hasMatch('550e8400-e29b-41d4-a716-446655440000'),
          isTrue);
    });

    test('Invalid UUIDs', () {
      expect(AutoValidators.uuidValidate!.hasMatch('invalid-uuid'), isFalse);
      expect(
          AutoValidators.uuidValidate!
              .hasMatch('123e4567-e89b-12d3-a456-42661417400g'),
          isFalse);
    });
  });
}
