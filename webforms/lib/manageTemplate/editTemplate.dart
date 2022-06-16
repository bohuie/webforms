import 'package:flutter/material.dart';
import 'package:webforms/loggedinhome.dart';

import 'TemplatePage.dart';

class editTemplate extends StatelessWidget {
  const editTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(child: Text('Save'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.black)),
        ElevatedButton(child: Text('Back to Template'), onPressed: () {navigate(context);}, style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }
  void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(1)));
  }
}