import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your fav. color?',
      'answers': ['Black', 'Red', 'Green', 'Blue']
    },
    {
      'questionText': 'What\'s yuor fav. animal?',
      'answers': ['Cow', 'Dog', 'Cat', 'Monkey']
    },
    {
      'questionText': 'What you prefer?',
      'answers': ['Instagram', 'Facebook', 'Twitter', 'Reddit']
    }
  ];

  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: (questionIndex < questions.length)
              ? Column(
                  children: [
                    Question(
                      questions[questionIndex]['questionText'],
                    ),
                    ...(questions[questionIndex]['answers'] as List<String>)
                        .map((answer) {
                      return Answer(answerQuestions, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text('That\'s it, thanks for your time.'),
                )),
    );
  }
}
