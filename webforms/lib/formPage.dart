import 'package:flutter/material.dart';
import 'selectViewT.dart';
import 'editForm.dart';
import 'duplicateForm.dart';
import 'unpublishForm.dart';
import 'exportForm.dart';

class formPage extends StatelessWidget {
  const formPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(children: [
            create(),
            Expanded(
                child: Column(
              children: [formList()],
            ))
          ]),
        ));
  }
}

class create extends StatelessWidget {
  const create({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            child: Text('Create a new Form'),
            onPressed: () {
              navSelectViewT(context);
            },
            style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }

  void navSelectViewT(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => selectViewT()));
  }
}

class formList extends StatelessWidget {
  const formList({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('Form Name')),
        DataColumn(label: Text('Actions')),
        DataColumn(label: Text('')),
        DataColumn(label: Text('')),
        DataColumn(label: Text(''))
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Form 1')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                navEdit(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Duplicate'),
              onPressed: () {
                navDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(
              child: Text('Unpublish'),
              onPressed: () {
                navUnpublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          DataCell(ElevatedButton(
              child: Text('Export'),
              onPressed: () {
                navExport(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 2')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                navEdit(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Duplicate'),
              onPressed: () {
                navDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(
              child: Text('Unpublish'),
              onPressed: () {
                navUnpublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          DataCell(ElevatedButton(
              child: Text('Export'),
              onPressed: () {
                navExport(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 3')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                navEdit(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Duplicate'),
              onPressed: () {
                navDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(
              child: Text('Unpublish'),
              onPressed: () {
                navUnpublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          DataCell(ElevatedButton(
              child: Text('Export'),
              onPressed: () {
                navExport(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 4')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {
                navEdit(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Duplicate'),
              onPressed: () {
                navDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(
              child: Text('Unpublish'),
              onPressed: () {
                navUnpublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          DataCell(ElevatedButton(
              child: Text('Export'),
              onPressed: () {
                navExport(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
      ],
    );
  }

  void navEdit(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => editForm()));
  }

  void navDuplicate(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => duplicateForm()));
  }

  void navUnpublish(BuildContext context) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => unpublishForm()));
  }

  void navExport(BuildContext context) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => exportForm()));
  }
}


