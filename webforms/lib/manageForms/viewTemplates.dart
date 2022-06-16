import 'package:flutter/material.dart';
import 'selectViewT.dart';
import 'formPage.dart'; //import 'Template.dart';

class viewTemplate extends StatelessWidget {
  const viewTemplate({super.key});

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
            child: Text('Back to "Select and View Templates"'),
            onPressed: () {
              navSelectViewT(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }

  void navSelectViewT(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => selectViewT()));
  }
}
