import 'package:flutter/material.dart';
import '../loggedinhome.dart';
import 'createTemplates.dart';
import 'editTemplate.dart';
import 'viewTemplate.dart';

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
        ElevatedButton(child: Text('Create a new Template'), onPressed: () {navigate(context);}, style: ElevatedButton.styleFrom(primary: Colors.blue))
      ],
    );
  }
    void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => createTemplatePage()));
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
          DataCell(ElevatedButton(child: Text('View'), onPressed: () {navigateView(context);}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {navigateEdit(context);}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {modalDuplicate(context);}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue))),
          DataCell(ElevatedButton(child: Text('Remove'), onPressed: () {modalRemove(context);}, style: ElevatedButton.styleFrom(primary: Colors.red)))
        ]),
        DataRow(cells: [
          DataCell(Text('Template 2')),
                    DataCell(ElevatedButton(child: Text('View'), onPressed: () {navigateView(context);}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {navigateEdit(context);}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {modalDuplicate(context);}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue))),
          DataCell(ElevatedButton(child: Text('Remove'), onPressed: () {modalRemove(context);}, style: ElevatedButton.styleFrom(primary: Colors.red)))
        ]),
        DataRow(cells: [
          DataCell(Text('Template 3')),
                    DataCell(ElevatedButton(child: Text('View'), onPressed: () {navigateView(context);}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {navigateEdit(context);}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {modalDuplicate(context);}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue))),
          DataCell(ElevatedButton(child: Text('Remove'), onPressed: () {modalRemove(context);}, style: ElevatedButton.styleFrom(primary: Colors.red)))
        ]),
        DataRow(cells: [
          DataCell(Text('Template 4')),
                    DataCell(ElevatedButton(child: Text('View'), onPressed: () {navigateView(context);}, style: ElevatedButton.styleFrom(primary: Colors.blue))),
          DataCell(ElevatedButton(child: Text('Edit'), onPressed: () {navigateEdit(context);}, style: ElevatedButton.styleFrom(primary: Colors.lightGreen))),
          DataCell(ElevatedButton(child: Text('Duplicate'), onPressed: () {modalDuplicate(context);}, style: ElevatedButton.styleFrom(primary: Colors.lightBlue))),
          DataCell(ElevatedButton(child: Text('Remove'), onPressed: () {modalRemove(context);}, style: ElevatedButton.styleFrom(primary: Colors.red)))
        ]),
      ],
    );
  }
  void navigateEdit(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => editTemplatePage()));
  }
  void navigateView(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => viewTemplate()));
  }
    void modalRemove(BuildContext context) {
    showDialog(
      context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Do you want to remove this form template?'),
            content: Text('You will delete this template permanently.'),
            actions: <Widget>[
              FloatingActionButton(
                child: Text('Yes'),
                onPressed: () {navigate(context);},
                ),
              FloatingActionButton(
                child: Text('No'),
                onPressed: () {navigate(context);},
              ),  
            ]
          );

        }
    );
  }
  void modalDuplicate(BuildContext context) {
    showDialog(
      context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Do you want a dupulicate of this template?'),
            content: Text('It will make a copy of this template.'),
            actions: <Widget>[
              FloatingActionButton(
                child: Text('Yes'),
                onPressed: () {navigate(context);},
                ),
              FloatingActionButton(
                child: Text('No'),
                onPressed: () {navigate(context);},
              ),  
            ]
          );
        }
    );
  }
    void navigate(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(1)));
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
