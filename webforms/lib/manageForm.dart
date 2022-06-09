import 'package:flutter/material.dart';

class submitB extends StatelessWidget {
  const submitB({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: manageForm(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class manageForm extends StatelessWidget {
  const manageForm({super.key});

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
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Duplicate'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(
              child: Text('Delete'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          DataCell(ElevatedButton(
              child: Text('Publish'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 2')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Duplicate'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(
              child: Text('Delete'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          DataCell(ElevatedButton(
              child: Text('Publish'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 3')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Duplicate'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(
              child: Text('Delete'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          DataCell(ElevatedButton(
              child: Text('Publish'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 4')),
          DataCell(ElevatedButton(
              child: Text('Edit'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(
              child: Text('Duplicate'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(
              child: Text('Delete'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          DataCell(ElevatedButton(
              child: Text('Publish'),
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: Colors.green)))
        ]),
      ],
    );
  }
}
