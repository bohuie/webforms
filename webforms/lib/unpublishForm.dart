import 'package:flutter/material.dart';

import 'formPage.dart'; //import 'Template.dart';

class unpublishForm extends StatelessWidget {
  const unpublishForm({super.key});

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
        .push(MaterialPageRoute(builder: (context) => formPage()));
  }
}
