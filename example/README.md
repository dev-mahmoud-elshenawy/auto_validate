# Auto Validate Example

## Form Validator Usage

```dart
import 'package:auto_validate/auto_validate.dart';
import 'package:flutter/material.dart';

/// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)

void main() => runApp(AutoValidateApp());

/// Main widget for the Auto Validate application.
class AutoValidateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto Validate Package',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Auto Validate"),
        ),
        body: AutoValidateHome(),
      ),
    );
  }
}

/// Home screen widget for displaying form validation.
class AutoValidateHome extends StatelessWidget {
  // Controllers for the form fields.
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController strongPasswordController =
  TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.5),
          child: Column(
            children: [
              Flexible(
                flex: 5,
                child: FlutterLogo(size: 200),
              ),
              Flexible(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTextField(
                      controller: emailController,
                      hintText: "Email",
                      validator: FormValidator.email(
                        errorMessage: 'Please Enter Valid Email',
                      ),
                    ),
                    _buildTextField(
                      controller: passwordController,
                      hintText: "Password",
                      validator: FormValidator.password(
                        errorMessage: 'Please Enter Valid Password',
                      ),
                    ),
                    _buildTextField(
                      controller: strongPasswordController,
                      hintText: "Strong Password",
                      validator: FormValidator.passwordStrong(
                        errorMessage: 'Please Enter Valid Strong Password',
                      ),
                    ),
                    _buildTextField(
                      controller: phoneController,
                      hintText: "Phone",
                      validator: FormValidator.phone(
                        errorMessage: 'Please Enter Valid Phone',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Builds a text field with validation.
  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide(),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
```

## Auto Validate Usage

```dart
import 'package:auto_validate/auto_validate.dart';

/// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)

class AutoValidateExample {
  validation() {
    var email = 'Dev.Mahmoud.ElShenawy@gmail.com';
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
```
