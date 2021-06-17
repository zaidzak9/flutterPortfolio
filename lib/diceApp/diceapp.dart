import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: DiceApp(),
  ));
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int imageNumberLeft = 1;
  int imageNumberRight = 1;


  void generateRandomNumber(){
    imageNumberLeft = Random().nextInt(6)+1;
    imageNumberRight = Random().nextInt(6)+1;
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
          child: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          generateRandomNumber();
                        });
                      },
                      child: Image.asset('images/dice$imageNumberLeft.png')),
                ),
                Expanded(
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          generateRandomNumber();
                        });
                      },
                      child: Image.asset('images/dice$imageNumberRight.png')),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
