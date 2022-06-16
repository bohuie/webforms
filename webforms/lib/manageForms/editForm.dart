import 'package:flutter/material.dart';
import 'package:webforms/loggedinhome.dart';
import 'formPage.dart';
import 'publishForm.dart';

class editForm extends StatelessWidget {
  const editForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [back(), defnotification(), defsender(), save()],
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

class publish extends StatelessWidget {
  const publish({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Publish'),
            onPressed: () {
              navPublishForm(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }

  void navPublishForm(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => publishForm()));
  }
}

class defnotification extends StatelessWidget {
  const defnotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Define associated notifications'),
            onPressed: () {
            //123123  
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }
}

class defsender extends StatelessWidget {
  const defsender({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Define associated email sender'),
            onPressed: () {
            //123123  
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }
}

class save extends StatelessWidget {
  const save({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('save'),
            onPressed: () {
            //123123  
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }
}