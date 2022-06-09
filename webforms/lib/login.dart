import 'package:flutter/material.dart';
import 'loggedinhome.dart';


class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            navigate(context);
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
      )
    );
  }

  void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage()));
  }
}
