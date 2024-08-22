import 'package:auto_validate/auto_validate.dart';
import 'package:flutter/material.dart';

/// Created By Mahmoud El Shenawy (Dev.M.ElShenawy@Icloud.com)

/// Entry point for the Auto Validate App.
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
