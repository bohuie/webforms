import 'package:flutter/material.dart';

class sendEmail extends StatelessWidget {
  const sendEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Send Email'),)
        ),
        );
        
    
  }
}