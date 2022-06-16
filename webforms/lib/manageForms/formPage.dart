import 'package:flutter/material.dart';
import '../loggedinhome.dart';
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
              children: [UnpublishedformList(),publishedFormList()],
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
            child: Text('View Template'),
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

class UnpublishedformList extends StatelessWidget {
  const UnpublishedformList({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('Unpublished Form List')),
        DataColumn(label: Text('Actions')),
        DataColumn(label: Text('')),
        DataColumn(label: Text('')),
        DataColumn(label: Text('')),
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
                modalDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
              DataCell(ElevatedButton(
              child: Text('Publish'),
              onPressed: () {
                modalPublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.green))),
          DataCell(ElevatedButton(
              child: Text('Remove'),
              onPressed: () {
                modalRemove(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red)))
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
                modalDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
              DataCell(ElevatedButton(
              child: Text('Publish'),
              onPressed: () {
                modalPublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.green))),
          DataCell(ElevatedButton(
              child: Text('Remove'),
              onPressed: () {
                modalRemove(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red)))
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
                modalDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
              DataCell(ElevatedButton(
              child: Text('Publish'),
              onPressed: () {
                modalDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.green))),
          DataCell(ElevatedButton(
              child: Text('Remove'),
              onPressed: () {
                modalPublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red)))
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
                modalDuplicate(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.orange))),
              DataCell(ElevatedButton(
              child: Text('Publish'),
              onPressed: () {
                modalPublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.green))),
          DataCell(ElevatedButton(
              child: Text('Remove'),
              onPressed: () {
                modalRemove(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red)))
        ]),
      ],
    );
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
  void modalPublish(BuildContext context) {
    showDialog(
      context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Do you want to publish this form template?'),
            content: Text('This form can be viewed and filled in View Forms by student user.'),
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
                onPressed: () {navDuplicate(context);},
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
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(2)));
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

class publishedFormList extends StatelessWidget {
  const publishedFormList({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(label: Text('Published Form List')),
        DataColumn(label: Text('Actions'))
        ],
      rows: [
        DataRow(cells: [
          DataCell(Text('Form 1')),
          DataCell(ElevatedButton(
              child: Text('Unpblish'),
              onPressed: () {
                modalUnpublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red))),
        ]),
                DataRow(cells: [
          DataCell(Text('Form 2')),
          DataCell(ElevatedButton(
              child: Text('Unpblish'),
              onPressed: () {
                modalUnpublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red))),
        ]),
                DataRow(cells: [
          DataCell(Text('Form 3')),
          DataCell(ElevatedButton(
              child: Text('Unpblish'),
              onPressed: () {
                modalUnpublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red))),
        ]),
                DataRow(cells: [
          DataCell(Text('Form 4')),
          DataCell(ElevatedButton(
              child: Text('Unpblish'),
              onPressed: () {
                modalUnpublish(context);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red))),
          ]),
      ],
    );
  }
  void modalUnpublish(BuildContext context) {
    showDialog(
      context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Do you want to unpublish this form?'),
            content: Text('If yes, Student user cannot view and fill this form anymore.\n It will return to unpublished form list.'),
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
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(2)));
  }
}