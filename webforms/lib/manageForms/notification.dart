import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:webforms/loggedinhome.dart';

import 'formPage.dart'; //import 'Template.dart';

class notifications extends StatelessWidget {
  const notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [back()], //back button
    );

  }
}

class back extends StatelessWidget {
  const back({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Back to "Form Page"'),
            onPressed: () {
              navFormPage(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }

  void navFormPage(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(2)));
  }
}
