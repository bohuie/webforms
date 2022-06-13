import 'package:flutter/material.dart';
import 'package:webforms/login.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ElevatedButton(
          child: Text('Submit'),
          onPressed: () {
            navigate(context);
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
      )
    );
  }

  void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login()));
  }
}