import 'package:flutter/material.dart';
import 'main.dart';
import 'sendemail.dart';

class fillForm extends StatelessWidget {
  const fillForm({super.key});

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
                  title: Text('Send PDF?'),
                  content: Text('Thanks for filling out the form! Would you like to send it to xyz@ubc.ca?'),
                  actions: <Widget>[
                    FloatingActionButton(
                      child: Text('Yes'),
                      onPressed: () {navemail(context);},
                      ),
                    FloatingActionButton(
                      child: Text('No'),
                      onPressed: () {navhome(context);},
                      ),  
                  ]
                );

              }
            );
            
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
      )
    );
  }
  void navhome(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp()));
  }
  void navemail(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => sendEmail()));
  }



  }
