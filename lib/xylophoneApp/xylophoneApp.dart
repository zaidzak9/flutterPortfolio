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

  Expanded buildKey(Color color,String soundNum) {
   return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNum);
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Xylophone App'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
           buildKey(Colors.red,"1"),
            buildKey(Colors.orange,"2"),
            buildKey(Colors.yellow,"3"),
            buildKey(Colors.green,"4"),
            buildKey(Colors.blue,"5"),
            buildKey(Colors.black,"6"),
            buildKey(Colors.purpleAccent,"7")
          ],
        ),
      ),
    );
  }
}
