import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: XylophoneApp(),
  ));
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(String note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Xylophone App'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton(
              onPressed: (){
                playSound("1");
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
            ),
            TextButton(
              onPressed: (){
                playSound("2");
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)),
            ),
            TextButton(
              onPressed: (){
                playSound("3");
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
            ),TextButton(
              onPressed: (){
                playSound("4");
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)),
            ),
            TextButton(
              onPressed: (){
                playSound("5");
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purpleAccent)),
            ),TextButton(
              onPressed: (){
                playSound("6");
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
            ),TextButton(
              onPressed: (){
                playSound("7");
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.brown)),
            )
          ],
        ),
      ),
    );
  }
}
