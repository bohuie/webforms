import 'package:flutter/material.dart';
import 'package:webforms/loggedinhome.dart';
import 'TemplatePage.dart';
import 'package:flutter/rendering.dart';

class createTemplatePage extends StatefulWidget {
  const createTemplatePage({super.key});

  @override
  State<createTemplatePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<createTemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Template'), backgroundColor: Colors.blue[600],
        actions: <Widget>[ 
        ElevatedButton(child: Text('Save'), onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.blue[500])),
        ElevatedButton(child: Text('Back to Template'), onPressed: () {navigate(context);}, style: ElevatedButton.styleFrom(primary: Colors.blue[400])),
        ]
      ),
      body: new Row(
        children: [
          Padding(padding: EdgeInsets.all(2.0)),
          Expanded(child: leftColumn()),
          Padding(padding: EdgeInsets.all(2.0)),
          Expanded(child: middleColumn()),
          Padding(padding: EdgeInsets.all(2.0)),
          Expanded(child: rightColumn()),
          Padding(padding: EdgeInsets.all(2.0)),
        ]
      )
    );
  }
  void navigate(BuildContext context) {
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoggedInPage(1)));
   }
}

class leftColumn extends StatelessWidget {
  const leftColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'), backgroundColor: Colors.red[500],
      ),
      body:  Center(
        child: Draggable<Color>(
          data: Colors.green,
          child: Container(color: Colors.green, width: 200, height: 200,),
          feedback: Container(color: Colors.yellow, width: 200, height: 200,),
          childWhenDragging: Container(color: Colors.green, width: 200, height: 200,),
        ) 
      )
    );
  }
}



class middleColumn extends StatefulWidget {
  const middleColumn({super.key});
      
  @override
  State<StatefulWidget> createState() => _middleColumnState();
}
 

class _middleColumnState extends State<middleColumn>{
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Name'), backgroundColor: Colors.red[500],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          DragTarget<Color>(
            onWillAccept: (data) => true,
            onAccept: (data) => setState(() {
            color = data;
            }),
            builder: (context, candidateData, rejectedData) { 
              return Container(
              color: color,
              width: 200,
              height:200,
            );}),
        ],
      ),
    )  
    );
  } 
}

class rightColumn extends StatelessWidget {
  const rightColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Widgets'), backgroundColor: Colors.red[600],
      ),
      body: Container(color: Colors.white,)
      );
  }
}
