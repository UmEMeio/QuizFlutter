import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State {
  var QuestionsIndex = 0;

  void answerQuestion() {
    setState(() {
      QuestionsIndex = QuestionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Criando um Map
    var Questions = [
      {
        'questionText': 'Qual seu anime favorito ?',
        'answers': ['Sangatsu', 'Boku no hero', 'Tate no Yusha']
      },
      {
        'questionText': 'Qual nome de seu cachorro ?',
        'answers': ['Lutero', 'Lut', 'Lute']
      },
      {
        'questionText': 'O que o Tiago ama ?',
        'answers': ['Comer', 'Bleach', 'Mirai Nikki']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: Column(
          children: <Widget>[
            Question(Questions[QuestionsIndex]['questionText'] as String),
            ...(Questions[QuestionsIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
