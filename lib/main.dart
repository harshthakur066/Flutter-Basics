import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            Text('The Questions'),
            Row(children: [
              RaisedButton(
                child: Text('Ans 1'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Ans 2'),
                onPressed: null,
              ),
              RaisedButton(
                child: Text('Ans 3'),
                onPressed: null,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
