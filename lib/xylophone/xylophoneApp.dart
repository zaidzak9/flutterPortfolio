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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Xylophone App'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(child:
          Center(
            child: TextButton(
              onPressed: (){
                final player = AudioCache();
                player.play('note1.wav');
              },
              child: Text('Play sound'),
            ),
          ),
      ),
    );
  }
}
