import 'package:flutter/material.dart';



void main() async{
 
  runApp( MyApp());



}

class MyApp extends StatelessWidget {
  MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('View Forms'),
  
      ),
        body: Center(child: const TableWidget(),)

        )
      );
    
  }
}

class TableWidget extends StatelessWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('Form Name')),
        DataColumn(label: Text('Actions')),
        DataColumn(label: Text(''))
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Form 1')),
          DataCell(ElevatedButton(child: Text('Download'), onPressed: () {})),
          DataCell(ElevatedButton(child: Text('Fill Form'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 2')),
          DataCell(ElevatedButton(child: Text('Download'), onPressed: () {})),
          DataCell(ElevatedButton(child: Text('Fill Form'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 3')),
          DataCell(ElevatedButton(child: Text('Download'), onPressed: () {})),
          DataCell(ElevatedButton(child: Text('Fill Form'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange)))
        ]),
        DataRow(cells: [
          DataCell(Text('Form 4')),
          DataCell(ElevatedButton(child: Text('Download'), onPressed: () {})),
          DataCell(ElevatedButton(child: Text('Fill Form'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange)))
        ]),
      ],
    );
  }
}