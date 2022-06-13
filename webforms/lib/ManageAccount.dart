import 'package:flutter/material.dart';

class ManageAccounts extends StatelessWidget {
  const ManageAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Manage Accounts'),
        ),
      )
    );
  }
}