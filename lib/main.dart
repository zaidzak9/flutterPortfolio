import 'package:flutter/material.dart';
import 'package:flutter_portfolio/diceApp/diceapp.dart';
import 'package:flutter_portfolio/xylophone/xylophoneApp.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/self.jpeg'),
            ),
            Text(
              'Zaid Zakir',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40),
            ),
            Text(
              'Experienced Software Engineer',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  letterSpacing: 2,
                  fontSize: 20),
            ),
            SizedBox(
                height: 20,
                width: 200,
                child: Divider(
                  color: Colors.white,
                )),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                  ),
                  title: Text('+60179454119',
                      style: TextStyle(fontSize: 15, letterSpacing: 2)),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                  ),
                  title: Text('zaidzakir@hotmail.com',
                      style: TextStyle(fontSize: 15, letterSpacing: 2)),
                ),
              ),
            ),
            ElevatedButton(
              child: Text('Enter'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppHome()),
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text('Dice App'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DiceApp()),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 30))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text('Xylophone App'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => XylophoneApp()),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 30))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text('Quiz App'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => XylophoneApp()),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                      textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 30))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
