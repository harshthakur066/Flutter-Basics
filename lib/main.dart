import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var quetionIndex = 0;

  void answerQuestions() {
    quetionIndex++;
    print(quetionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav. color?',
      'What\'s yuor fav. animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[quetionIndex],
            ),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: () => print('Ans 2 choosen!'), //Anonymus Function
            ),
            RaisedButton(
              child: Text('Ans 3'),
              onPressed: () {
                //...More line codes
                print('Ans 3 choosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
