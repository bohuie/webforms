import 'package:flutter/material.dart';

class downloadPage extends StatelessWidget {
  const downloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Download'),)
        ),
        );
        
    
  }
}