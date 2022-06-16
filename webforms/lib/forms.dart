import 'package:flutter/material.dart';
import 'package:webforms/fillform.dart';
import 'downloadpage.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('Form Name')),
        DataColumn(label: Text('Actions')),
        
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Form 1')),
          DataCell(ElevatedButton(child: Text('Fill Form'), onPressed: () {navfillform(context);}, style: ElevatedButton.styleFrom(primary: Colors.orange)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 2')),
          DataCell(ElevatedButton(child: Text('Fill Form'), onPressed: () {navfillform(context);}, style: ElevatedButton.styleFrom(primary: Colors.orange)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 3')),
          DataCell(ElevatedButton(child: Text('Fill Form'), onPressed: () {navfillform(context);}, style: ElevatedButton.styleFrom(primary: Colors.orange)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 4')),
          DataCell(ElevatedButton(child: Text('Fill Form'), onPressed: () {navfillform(context);}, style: ElevatedButton.styleFrom(primary: Colors.orange)))
        ]),
      ],
    );
  }


  void navfillform(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => fillForm()));
  }
}