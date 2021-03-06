import 'package:flutter/material.dart';
import 'package:webforms/ManageAccount.dart';
import 'loggedinhome.dart';

class staffbutton extends StatelessWidget {
  const staffbutton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Confirm'),
            onPressed: () {
              navigate(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }

  void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoggedInPage(0)));
  }
}

