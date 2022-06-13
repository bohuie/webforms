import 'package:flutter/material.dart';
import 'package:webforms/ManageAccount.dart';
import 'package:webforms/main.dart';
import 'Template.dart';
import 'formPage.dart';


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
        child: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'Accounts'),
                    Tab(text: 'Templates'),
                    Tab(text: 'Forms')
                  ],
                ),
                leading: IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () {
                      navigatelogout(context);
                    })),
            body: TabBarView(
              children: [
                ManageAccounts(),
                templatePage(),
                formPage(),
              ],
            )));
  }

  void navigatelogout(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MyApp()));
  }
}
