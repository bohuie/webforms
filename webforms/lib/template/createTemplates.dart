import 'package:flutter/material.dart';
import 'package:webforms/loggedinhome.dart';
import 'Template.dart';

void main() => runApp(const createTemplates());

class createTemplates extends StatelessWidget {
  const createTemplates({Key? key}) : super(key: key);

  static const String _title = 'Form template';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

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