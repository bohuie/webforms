import 'package:flutter/material.dart';
import 'forms.dart';
import 'Template.dart';
import 'manageForm.dart';

class LoggedInPage extends StatefulWidget {
  LoggedInPage({super.key});

  @override
  State<LoggedInPage> createState() => _LoggedInPageState();
}

class _LoggedInPageState extends State<LoggedInPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(appBar: AppBar( 
        centerTitle: true,
        bottom: TabBar(
          tabs: [
            Tab(text: 'Accounts'),
            Tab(text: 'Templates'),
            Tab(text: 'Forms')
          ],
        ),
  
      ),
        body: TabBarView(children: [
          Text(''),
          templatePage(),
          submitB(),
        ],)
        )
      );
    
  }
}