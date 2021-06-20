import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuizHome(),
  ));
}

class QuizHome extends StatefulWidget {
  const QuizHome({Key key}) : super(key: key);

  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  List<Icon> scoreKeeper = [];

  List<String> questions = [
    'White chocolate isn\'t chocolate',
    'Africa is the biggest continent in the world',
    'LeBron James is the worlds best golfer'
  ];

  List<bool> answer = [true, false, false];

  int questionNum = 0;

  void counter(){
    print(questionNum);
    if (questionNum <questions.length - 1) {
      questionNum++;
      print('cunt is going thru');
      bool correctAnswer = answer[questionNum];
      if (correctAnswer) {
        scoreKeeper.add(Icon(Icons.check, color: Colors.green));
      } else {
        scoreKeeper.add(Icon(Icons.cancel, color: Colors.red));
      }
    }else{
      print('do nothin');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Quiz App'),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      questions[questionNum],
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white)),
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () {
                      setState(() {
                        counter();
                      });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  child: Text(
                    'False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        TextStyle(color: Colors.white)),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed: () {
                      setState(() {
                        counter();
                      });
                  },
                ),
              ),
            ),
            Row(children: scoreKeeper)
          ],
        ),
      ),
    );
  }
}
