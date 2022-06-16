import 'package:flutter/material.dart';
import 'package:webforms/loggedinhome.dart';
import 'editForm.dart';
import 'exportForm.dart';
import 'formPage.dart';

class publishForm extends StatelessWidget {
  const publishForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ElevatedButton(
            child: Text('Export Form'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        title: Text('Publish'),
                        content: Text('Would you like to publish your form?'),
                        actions: <Widget>[
                          FloatingActionButton(
                            child: Text('Yes'),
                            onPressed: () {
                              navExport(context);
                            },
                          ),
                          FloatingActionButton(
                            child: Text('No'),
                            onPressed: () {
                              navFormPage(context);
                            },
                          ),
                        ]);
                  });
            },
            style: ElevatedButton.styleFrom(primary: Colors.green),
          ),
        ));
  }

  void navFormPage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoggedInPage(2)));
  }

  void navExport(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => exportForm()));
  }
}
