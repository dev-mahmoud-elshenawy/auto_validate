# Auto Validate

The Auto Validate Package is a unique and easy-to-use solution for automatic validation of various data types using regular expressions.

[![Pub Package](https://img.shields.io/badge/Pub%20get-Auto%20Validate-yellow)](https://pub.dev/packages/auto_validate)
![Build Status](https://img.shields.io/badge/Build-Passing-teal)
![Unit Test](https://img.shields.io/badge/Unit%20Test-Passing-red)
[![creator](https://img.shields.io/badge/Creator-Mahmoud%20El%20Shenawy-blue)](https://www.linkedin.com/in/dev-mahmoud-elshenawy/)
<a href="https://www.buymeacoffee.com/m.elshenawy" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="30" width="174" > </a>

## Importance

This package streamlines the validation process, allowing you to easily implement validation without needing to write the code yourself. By using this package, you can save valuable time and ensure that your input data meets the required criteria.

## Usage

Here's a simple example of how to use the Auto Validate package:

# String Validation Extension [New Feature]

This package provides an extension on `String?` that offers convenient methods for validating various input formats using the `AutoValidate` class. It allows for a more readable and fluent validation process in your Dart applications.

## Features

- Validate usernames, passwords, email addresses, phone numbers, credit card numbers, and more.
- Check for valid formats like ISBN, MAC addresses, hexadecimal codes, and JSON Web Tokens (JWT).
- Simplify validation checks by using fluent methods directly on `String?` instances.
- Improve code readability and maintainability by using the extension methods for validation.

```dart
import 'package:auto_validate/auto_validate.dart';

  void validation() {
    var email = 'Dev.M.ElShenawy@Icloud.com';
    var name = 'Mahmud El Shenawy';
    var password = '@MahmoudElShenawy2021';
    var phone = '+201098415860';
  
    // You can validate the input using the AutoValidate class
    AutoValidate.email(email.toString())
            ? print('Email is Valid')
            : print('Email is Invalid');
  
    AutoValidate.userName(name.toString())
            ? print('User Name is Valid')
            : print('User Name is Invalid');
  
    AutoValidate.password(password.toString())
            ? print('Password is Valid')
            : print('Password is Invalid');
  
    AutoValidate.phone(phone.toString())
            ? print('Phone is Valid')
            : print('Phone is Invalid');
  
    // You can also use the extension methods to validate the input
    email.isValidEmail
            ? print('Email is Valid')
            : print('Email is Invalid');
  
    name.isValidUsername
            ? print('User Name is Valid')
            : print('User Name is Invalid');
  
    password.isValidPassword
            ? print('Password is Valid')
            : print('Password is Invalid');
  
    phone.isValidPhone
            ? print('Phone is Valid')
            : print('Phone is Invalid');
  }

```

A simple usage of Form Validator Example:

```dart
import 'package:auto_validate/auto_validate.dart';

  TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                borderSide: BorderSide(),
                  ),
                ),
                validator: FormValidator.email(
                  errorMessage: 'Please Enter Valid Email',
                   ),
  );
```

### More Details

- Make validation on all next elements with AutoValidate

  - Arabic Input
  - UserName (It Contains Alphanumeric, underscores and hyphens and its long between 3 to 16 characters)
  - Password (It Contains at least 1 lowerCase letter, upperCase letter, number and 8 characters long)
  - Strong Password (It Contains at least 1 lowerCase letter, upperCase letter, number, special character and 8 characters long
  - Email
  - Phone Number
  - International Phone Number
  - Credit Card 
  - SNN (Social Security Number)
  - Passport
  - Date (MM/DD/YYYY)
  - Date (YYYY/MM/DD)
  - IPV4 (Internet Protocol Version 4)
  - IPV6 (Internet Protocol Version 6)
  - Alphanumeric
  - Alphanumeric With Spaces
  - Alphabet
  - LowerCase
  - UpperCase
  - Digits
  - Decimals
  - Signed Decimals
  - URL
  - Base64
  - Base58
  - Base32
  - ASCII (American Standard Code for Information Interchange)
  - ByteLength ("Check String's Length (In Bytes) In A Range")
  - JWT (Json Web Token)
  - ISIN (International Securities Identification Number)
  - ISBN (International Standard Book Number - "You Have To Choose One Of Its Versions 10 or 13") 
  - MAC Address (Media Access Control - "You Have To Choose With Colons Or Not")
  - BIC (Bank Identifier Code)
  - MD5 Hash (Message-Digest Algorithm)
  - Capitalized
  - Emoji
  - Hexadecimal Color
  - Hexadecimal Number
  - Latitude and Longitude
  - Magnet URI
  - Mongo ID
  - Multibyte Character Sets
  - Null 
  - Non-Null 
  - SameType
  - Match
  - MinLength
  - MaxLength
  
- Make form validation on all next elements with FormValidator

  - Required (Non-Null Required Field - "For Empty TextFormField")
  - combination (Combination From More Than One Form Validator)
  - Arabic Input
  - UserName (It Contains Alphanumeric, underscores and hyphens and its long between 3 to 16 characters)
  - Password (It Contains at least 1 lowerCase letter, upperCase letter, number and 8 characters long)
  - Strong Password (It Contains at least 1 lowerCase letter, upperCase letter, number, special character and 8 characters long
  - Email
  - Phone Number
  - International Phone Number
  - Credit Card 
  - SNN (Social Security Number)
  - Passport
  - Date (MM/DD/YYYY)
  - Date (YYYY/MM/DD)
  - IPV4 (Internet Protocol Version 4)
  - IPV6 (Internet Protocol Version 6)
  - Alphanumeric
  - Alphanumeric With Spaces
  - Alphabet
  - LowerCase
  - UpperCase
  - Digits
  - Decimals
  - Signed Decimals
  - URL
  - Base64
  - Base58
  - Base32
  - ASCII (American Standard Code for Information Interchange)
  - JWT (Json Web Token)
  - ISIN (International Securities Identification Number)
  - MAC Address (Media Access Control - "Without Colons")
  - BIC (Bank Identifier Code)
  - MD5 Hash (Message-Digest Algorithm)
  - Capitalized
  - Latitude and Longitude
  - Magnet URI
  - Mongo ID
  - Multibyte Character Sets
  - MinLength
  - MaxLength
  
## Note

- Auto Validate is used to check any value you want
- Form Validator is the same previous functionality but with error message that uses in TextFormField validator attribute
- You can use more than one Form validator like next example:-
```dart
import 'package:auto_validate/auto_validate.dart';

  TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                borderSide: BorderSide(),
                  ),
                ),
                validator: FormValidator.combination(
                 validators: [
                 FormValidator.maxLength(maxLength: 15, errorMessage: 'Password Enter Valid Password With Max Length 15'),
                 FormValidator.minLength(minLength: 5, errorMessage: 'Password Enter Valid Password At Least Min Length 5'),
                 FormValidator.passwordStrong(errorMessage: 'Please Enter Valid Strong Password')
                 ])
  );
```


## Report Issues

If you encounter any issues, bugs, or have suggestions for improvements, please report them on the [GitHub Issues page](https://github.com/Mahmoud-ElShenawy/auto_validate/issues).

When reporting an issue, please provide the following information:
- A clear description of the problem or feature request.
- Steps to reproduce the issue (if applicable).
- The version of the Auto Validate package you are using.
- Any relevant code snippets or screenshots.

Your feedback is invaluable for improving the package and helping others in the community!

## Created By

- **Mahmoud El Shenawy** - [Mahmoud-ElShenawy](https://www.linkedin.com/in/dev-mahmoud-elshenawy)

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Mahmoud-ElShenawy/auto_validate/blob/master/LICENSE) file for details