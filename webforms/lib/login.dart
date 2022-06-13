import 'package:flutter/material.dart';
import 'package:webforms/forgotpassword.dart';
import 'loggedinhome.dart';
import 'forgotpassword.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [loginbutton(), forgotpassword()],
    );
  }
}

class loginbutton extends StatelessWidget {
  const loginbutton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Login'),
            onPressed: () {
              navigate(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }

  void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoggedInPage()));
  }
}

class forgotpassword extends StatelessWidget {
  const forgotpassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Forgot Password?'),
            onPressed: () {
              navForgotPassword(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }

  void navForgotPassword(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ForgotPassword()));
  }
}
