import 'package:flutter/material.dart';
import 'package:webforms/ManageAccount.dart';
import 'package:webforms/main.dart';
import 'template/Template.dart';
import 'formPage.dart';


class LoggedInPage extends StatefulWidget {
  int selectedPage;
  LoggedInPage(this.selectedPage);

  @override
  State<LoggedInPage> createState() => _LoggedInPageState(selectedPage);
}

class _LoggedInPageState extends State<LoggedInPage> {
  var selectedPage;
  _LoggedInPageState(this.selectedPage);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex:selectedPage,
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(text: 'Accounts'),
                    Tab(text: 'Templates'),
                    Tab(text: 'Forms')
                  ],
                ),
                actions: <Widget>[ ElevatedButton(
                  child: Text('Logout'),
                  onPressed: () {
                    navigatelogout(context);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ]),
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
