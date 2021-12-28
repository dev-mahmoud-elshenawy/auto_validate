import 'package:auto_validate/auto_validate.dart';
import 'package:test/test.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

void main() {
  group('Common Regular Expressions Tests', () {
    test('CreditCard Test', () {
      String? masterCard = '5555555555554444';
      String? visa = '4012888888881881';
      String? americanExpress = '378282246310005';
      String? card = '987654321098765';

      expect(AutoValidate.creditCard(masterCard), true);
      expect(AutoValidate.creditCard(visa), true);
      expect(AutoValidate.creditCard(americanExpress), true);
      expect(AutoValidate.creditCard(card), false);
    });

    test('Alphanumeric Test', () {
      String? success = 'mahmoud123elshenawy';
      String? fail = 'mahmoud@elshenawy.com';

      expect(AutoValidate.alphanumeric(success), true);
      expect(AutoValidate.alphanumeric(fail), false);
    });

    test('Alphanumeric With Spaces Test', () {
      String? success = 'mahmoud 123elshenawy';
      String? fail = 'mahmoud@elshenawy.com';

      expect(AutoValidate.alphanumericWithSpaces(success), true);
      expect(AutoValidate.alphanumericWithSpaces(fail), false);
    });

    test('Alphabet Test', () {
      String? success = 'Mahmoud';
      String? fail = 'mahmoud@elshenawy.com';

      expect(AutoValidate.alphabet(success), true);
      expect(AutoValidate.alphabet(fail), false);
    });

    test('LowerCase Test', () {
      String? success = 'mahmoud';
      String? fail = 'Mahmoud';

      expect(AutoValidate.lowerCase(success), true);
      expect(AutoValidate.lowerCase(fail), false);
    });

    test('UpperCase Test', () {
      String? success = 'MAHMOUD';
      String? fail = 'MAHMOUD';

      expect(AutoValidate.upperCase(success), true);
      expect(AutoValidate.upperCase(fail), false);
    });

    test('Digits Test', () {
      String? success = '874654';
      String? fail = '456e465';

      expect(AutoValidate.digits(success), true);
      expect(AutoValidate.digits(fail), false);
    });

    test('Decimals Test', () {
      String? success = '8.74654';
      String? fail = '+456465';

      expect(AutoValidate.decimals(success), true);
      expect(AutoValidate.decimals(fail), false);
    });

    test('Signed Decimals Test', () {
      String? success = '-8.74654';
      String? fail = '456465/4';

      expect(AutoValidate.decimalsSigned(success), true);
      expect(AutoValidate.decimalsSigned(fail), false);
    });

    test('User Name Test', () {
      String? success = 'mahmoud-elshenawy';
      String? fail = '@mahmoud';

      expect(AutoValidate.userName(success), true);
      expect(AutoValidate.userName(fail), false);
    });

    test('Password Test', () {
      String? success = 'mahm000udElshenawy';
      String? fail = 'mahmoudelshenawy';

      expect(AutoValidate.password(success), true);
      expect(AutoValidate.password(fail), false);
    });

    test('Strong Password Test', () {
      String? success = 'm@hm000udElshen@wy';
      String? fail = 'mahmoudelshenawy';

      expect(AutoValidate.passwordStrong(success), true);
      expect(AutoValidate.passwordStrong(fail), false);
    });

    test('Email Test', () {
      String? success = 'mahmoud@elshenawy.com';
      String? fail = 'mahmoud@el.shenawy';

      expect(AutoValidate.email(success), true);
      expect(AutoValidate.email(fail), false);
    });

    test('IPV4 Test', () {
      String? success = '255.125.205.180';
      String? fail = '255.256.205.180';

      expect(AutoValidate.ipv4(success), true);
      expect(AutoValidate.ipv4(fail), false);
    });

    test('IPV6 Test', () {
      String? success = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';
      String? fail = '2001:0db8:85a3:0000:0000:0370:7334';

      expect(AutoValidate.ipv6(success), true);
      expect(AutoValidate.ipv6(fail), false);
    });

    test('URL Test', () {
      String? success = 'https://www.mahmoudelshenawy.com';
      String? fail = 'mahmoud.elshenawy';

      expect(AutoValidate.url(success), true);
      expect(AutoValidate.url(fail), false);
    });

    test('Date (MMDDYYYY) Test', () {
      String? success = '15/06/1997';
      String? fail = '15/06/1997';

      expect(AutoValidate.dateMMDDYYYY(success), true);
      expect(AutoValidate.dateMMDDYYYY(fail), false);
    });

    test('Date (YYYYMMDD) Test', () {
      String? success = '1997 06 15';
      String? fail = '1997/06/15';

      expect(AutoValidate.dateYYYYMMDD(success), true);
      expect(AutoValidate.dateYYYYMMDD(fail), false);
    });

    test('SSN Test', () {
      String? success = '445-82-6835';
      String? fail = '121-72-55456';

      expect(AutoValidate.ssn(success), true);
      expect(AutoValidate.ssn(fail), false);
    });

    test('Phone Number Test', () {
      String? success = '+447911123456';
      String? fail = '+987a9875';

      expect(AutoValidate.phone(success), true);
      expect(AutoValidate.phone(fail), false);

      expect(AutoValidate.phone(success), true);
      expect(AutoValidate.phone(fail), false);
    });

    test('Passport Test', () {
      String? success = '9876543210';
      String? fail = '0000000000';

      expect(AutoValidate.passport(success), true);
      expect(AutoValidate.passport(fail), false);
    });

    test('Arabic Input Test', () {
      String? success = 'محمود الشناوى';
      String? fail = 'mahmoud el shenawy';

      expect(AutoValidate.inputArabic(success), true);
      expect(AutoValidate.inputArabic(fail), false);
    });
  });
}