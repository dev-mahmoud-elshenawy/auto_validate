import 'package:auto_validate/auto_validate.dart';
import 'package:flutter/material.dart';

/// Created By Mahmoud El Shenawy (Dev.Mahmoud.ElShenawy@Gmail.com)

void main() => runApp(AutoValidateApp());

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

class AutoValidateHome extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordStrongController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 12.5,
          ),
          child: Column(
            children: [
              Flexible(flex: 5, child: FlutterLogo(size: 200)),
              Flexible(
                flex: 7,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: TextFormField(
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
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        validator: FormValidator.password(
                          errorMessage: 'Please Enter Valid Password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: TextFormField(
                        controller: passwordStrongController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        validator: FormValidator.minLength(
                            errorMessage:
                                'Please Enter Valid Password At Least 5 Length',
                            minLength: 5),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: TextFormField(
                        controller: passwordStrongController,
                        decoration: InputDecoration(
                          hintText: "Phone",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        validator: FormValidator.phone(
                          errorMessage: 'Please Enter Valid Phone',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: TextFormField(
                        controller: passwordStrongController,
                        decoration: InputDecoration(
                          hintText: "Strong Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        validator: FormValidator.passwordStrong(
                            errorMessage: 'Please Enter Valid Strong Password'),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
