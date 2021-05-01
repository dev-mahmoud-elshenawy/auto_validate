import 'package:auto_validate/auto_validate.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

class AutoValidateExample {
  validation() {
    var email = 'Dev.Mahmoud.ElShenawy@gmail.com';
    var name = 'Mahmud El Shenawy';
    var password = '@MahmoudElShenawy2021';
    var phone = '+201098415860';

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
  }
}
