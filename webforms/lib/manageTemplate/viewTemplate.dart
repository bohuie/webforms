import 'package:flutter/material.dart';
import 'package:webforms/loggedinhome.dart';

import 'TemplatePage.dart';

class viewTemplate extends StatelessWidget {
  const viewTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(child: Text('Back to Template'), onPressed: () {navigate(context);}, style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }
  void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(1)));
  }
}