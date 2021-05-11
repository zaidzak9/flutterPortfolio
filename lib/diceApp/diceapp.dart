import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DiceApp(),
  ));
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

}