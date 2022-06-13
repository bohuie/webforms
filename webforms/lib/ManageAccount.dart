import 'package:flutter/material.dart';
import 'package:webforms/editstaffaccount.dart';
import 'createstaffaccounts.dart';

class ManageAccounts extends StatelessWidget {
  const ManageAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(children: [
            createstaffbutton(),
            Expanded(
                child: Column(
              children: [formList()],
            ))
          ]),
        ));
  }
}


class createstaffbutton extends StatelessWidget {
  const createstaffbutton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Create Staff Account'),
            onPressed: () {
              navigate(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }

  void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => staffbutton()));
  }
}

class formList extends StatelessWidget {
  const formList({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('Account Username')),
        DataColumn(label: Text('Actions')),
        DataColumn(label: Text('')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('User 1')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                navEditAccount(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                //navDeleteAccount(context);
              },
              
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('User 2')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                navEditAccount(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                //navDeleteAccount(context);
              },
              
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('User 3')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                navEditAccount(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                //navDeleteAccount(context);
              },
    
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('User 4')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                navEditAccount(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                //navDeleteAccount(context);
              },
              
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
      ],
    );
  }
void navEditAccount(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => editstaffbutton()));
  }

  void navDeleteAccount(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ManageAccounts()));
  }
}