import 'package:flutter/material.dart';
import 'package:webforms/loggedinhome.dart';
import 'viewTemplates.dart';
import 'editForm.dart';
import 'formPage.dart';

class selectViewT extends StatelessWidget {
  const selectViewT({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [back(), templateList()], //back button
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
        .pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(1)));
  }
}

class templateList extends StatelessWidget {
  const templateList({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('Template Name')),
        DataColumn(label: Text('Actions')),
        DataColumn(label: Text('')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Template 1: Blank')),
          DataCell(ElevatedButton(
              child: Text('View'),
              onPressed: () {
                navView(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Create Form'),
              onPressed: () {
                navCreate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
        ]),
        DataRow(cells: [
          DataCell(Text('Template 2')),
          DataCell(ElevatedButton(
              child: Text('View'),
              onPressed: () {
                navView(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Create Form'),
              onPressed: () {
                navCreate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
        ]),
        DataRow(cells: [
          DataCell(Text('Template 3')),
          DataCell(ElevatedButton(
              child: Text('View'),
              onPressed: () {
                navView(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Create Form'),
              onPressed: () {
                navCreate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
        ]),
        DataRow(cells: [
          DataCell(Text('Template 4')),
          DataCell(ElevatedButton(
              child: Text('View'),
              onPressed: () {
                navView(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Create Form'),
              onPressed: () {
                navCreate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
        ]),
        DataRow(cells: [
          DataCell(Text('Template 5')),
          DataCell(ElevatedButton(
              child: Text('View'),
              onPressed: () {
                navView(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Create Form'),
              onPressed: () {
                navCreate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
        ]),
        DataRow(cells: [
          DataCell(Text('Template 6')),
          DataCell(ElevatedButton(
              child: Text('View'),
              onPressed: () {
                navView(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Create Form'),
              onPressed: () {
                navCreate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
        ]),
      ],
    );
  }

  void navView(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => viewTemplate()));
  }

  void navCreate(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => editForm()));
  }
}
