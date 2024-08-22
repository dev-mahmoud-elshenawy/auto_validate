import 'package:auto_validate/auto_validate.dart';

/// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)

class AutoValidateExample {
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
}