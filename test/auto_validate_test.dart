import 'package:auto_validate/validators.dart';
import 'package:test/test.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

void main() {
  group('Common Regular Expressions Tests', () {
    test('CreditCard Test', () {
      var masterCard = '5555555555554444';
      var visa = '4012888888881881';
      var americanExpress = '378282246310005';
      var card = '987654321098765';

      expect(isCreditCardValid(masterCard.toString()), true);
      expect(isCreditCardValid(visa.toString()), true);
      expect(isCreditCardValid(americanExpress.toString()), true);
      expect(isCreditCardValid(card.toString()), false);
    });

    test('Alphanumeric Test', () {
      var success = 'mahmoud123elshenawy';
      var fail = 'mahmoud@elshenawy.com';

      expect(isAlphanumericValid(success.toString()), true);
      expect(isAlphanumericValid(fail), false);
    });

    test('Alphanumeric With Spaces Test', () {
      var success = 'mahmoud 123elshenawy';
      var fail = 'mahmoud@elshenawy.com';

      expect(isAlphanumericWithSpacesValid(success.toString()), true);
      expect(isAlphanumericWithSpacesValid(fail.toString()), false);
    });

    test('Alphabet Test', () {
      var success = 'Mahmoud';
      var fail = 'mahmoud@elshenawy.com';

      expect(isAlphabetValid(success.toString()), true);
      expect(isAlphabetValid(fail.toString()), false);
    });

    test('LowerCase Test', () {
      var success = 'mahmoud';
      var fail = 'Mahmoud';

      expect(isLowerCaseValid(success.toString()), true);
      expect(isLowerCaseValid(fail.toString()), false);
    });

    test('UpperCase Test', () {
      var success = 'MAHMOUD';
      var fail = 'MAHMOUD';

      expect(isUpperCaseValid(success.toString()), true);
      expect(isUpperCaseValid(fail.toString()), false);
    });

    test('Digits Test', () {
      var success = '874654';
      var fail = '456e465';

      expect(isDigitsValid(success.toString()), true);
      expect(isDigitsValid(fail.toString()), false);
    });

    test('Decimals Test', () {
      var success = '8.74654';
      var fail = '+456465';

      expect(isDecimalsValid(success.toString()), true);
      expect(isDecimalsValid(fail.toString()), false);
    });

    test('Signed Decimals Test', () {
      var success = '-8.74654';
      var fail = '456465/4';

      expect(isSignedDecimalsValid(success.toString()), true);
      expect(isSignedDecimalsValid(fail.toString()), false);
    });

    test('User Name Test', () {
      var success = 'mahmoud-elshenawy';
      var fail = '@mahmoud';

      expect(isUserNameValid(success.toString()), true);
      expect(isUserNameValid(fail.toString()), false);
    });

    test('Password Test', () {
      var success = 'mahm000udElshenawy';
      var fail = 'mahmoudelshenawy';

      expect(isPasswordValid(success.toString()), true);
      expect(isPasswordValid(fail.toString()), false);
    });

    test('Strong Password Test', () {
      var success = 'm@hm000udElshen@wy';
      var fail = 'mahmoudelshenawy';

      expect(isPasswordStrongValid(success.toString()), true);
      expect(isPasswordStrongValid(fail.toString()), false);
    });

    test('Email Test', () {
      var success = 'mahmoud@elshenawy.com';
      var fail = 'mahmoud@el.shenawy';

      expect(isEmailValid(success.toString()), true);
      expect(isEmailValid(fail.toString()), false);
    });

    test('IPV4 Test', () {
      var success = '255.125.205.180';
      var fail = '255.256.205.180';

      expect(isIPV4Valid(success.toString()), true);
      expect(isIPV4Valid(fail.toString()), false);
    });

    test('IPV6 Test', () {
      var success = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';
      var fail = '2001:0db8:85a3:0000:0000:0370:7334';

      expect(isIPV6Valid(success.toString()), true);
      expect(isIPV6Valid(fail.toString()), false);
    });

    test('URL Test', () {
      var success = 'https://www.mahmoudelshenawy.com';
      var fail = 'mahmoud.elshenawy';

      expect(isURLValid(success.toString()), true);
      expect(isURLValid(fail.toString()), false);
    });

    test('Date (MMDDYYYY) Test', () {
      var success = '15/06/1997';
      var fail = '15/06/1997';

      expect(isDateMMDDYYYYValid(success.toString()), true);
      expect(isDateMMDDYYYYValid(fail.toString()), false);
    });

    test('Date (YYYYMMDD) Test', () {
      var success = '1997 06 15';
      var fail = '1997/06/15';

      expect(isDateYYYYMMDDValid(success.toString()), true);
      expect(isDateYYYYMMDDValid(fail.toString()), false);
    });

    test('SSN Test', () {
      var success = '445-82-6835';
      var fail = '121-72-55456';

      expect(isSSNValid(success.toString()), true);
      expect(isSSNValid(fail.toString()), false);
    });

    test('Phone Number Test', () {
      var success = '+447911123456';
      var fail = '+987a9875';

      expect(isInternationalPhoneNumberValid(success.toString()), true);
      expect(isInternationalPhoneNumberValid(fail.toString()), false);

      expect(isPhoneNumberValid(success.toString()), true);
      expect(isPhoneNumberValid(fail.toString()), false);
    });

    test('Passport Test', () {
      var success = '9876543210';
      var fail = '0000000000';

      expect(isPassportValid(success.toString()), true);
      expect(isPassportValid(fail.toString()), false);
    });

    test('Arabic Input Test', () {
      var success = 'محمود الشناوى';
      var fail = 'mahmoud el shenawy';

      expect(isInputArabic(success.toString()), true);
      expect(isInputArabic(fail.toString()), false);
    });
  });
}