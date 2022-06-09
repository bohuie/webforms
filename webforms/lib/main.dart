import 'package:flutter/material.dart';
import 'forms.dart';
import 'login.dart';



void main() async{
  
 
  runApp( MyApp());



}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage()
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar( 
        centerTitle: true,
        title: const Text('View Forms'),
        actions: <Widget>[ ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            navigatelogin(context);
          },
          style: ElevatedButton.styleFrom(primary: Colors.green),
        ),
        ]

  
      ),
        body: Center(child: const TableWidget(),)

        )
      );
    
  }
  void navigatelogin(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => login()));
  }

}