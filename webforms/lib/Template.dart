import 'package:flutter/material.dart';

class templatePage extends StatelessWidget {
  const templatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(child: Column(children: [CreateButton(),Expanded(child: Column(children: [TemplateTable()],))]),
      )
    );
  }
}

class CreateButton extends StatelessWidget {
  const CreateButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(child: Text('Create Your Own Template'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }
}

class TemplateTable extends StatelessWidget {
  const TemplateTable({super.key});

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
          DataCell(Text('Template 1')),
          DataCell(ElevatedButton(child: Text('View'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Remove Templates'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue)))
        ]),
        DataRow(cells: [
          DataCell(Text('Template 2')),
          DataCell(ElevatedButton(child: Text('View'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Remove Templates'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue)))
        ]),
        DataRow(cells: [
          DataCell(Text('Template 3')),
          DataCell(ElevatedButton(child: Text('View'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Remove Templates'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue)))
        ]),
        DataRow(cells: [
          DataCell(Text('Template 4')),
          DataCell(ElevatedButton(child: Text('View'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Remove Templates'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue)))
        ]),
         DataRow(cells: [
          DataCell(Text('Template 5')),
          DataCell(ElevatedButton(child: Text('View'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Remove Templates'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue)))
        ]),
         DataRow(cells: [
          DataCell(Text('Template 6')),
          DataCell(ElevatedButton(child: Text('View'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Remove Templates'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.orange))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue)))
        ]),
      ],
    );
  }
}

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70.0, vertical: 60),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: child,
          ),
    );
  }
}