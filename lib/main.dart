import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State {
  final questions = const [
    {
      'questionText': 'Qual seu anime favorito ?',
      'answers': [
        {'text': 'Sangatsu', 'score': 10},
        {'text': 'Boku no hero', 'score': 0},
        {'text': 'Tate no Yusha', 'score': 0}
      ]
    },
    {
      'questionText': 'Qual nome de seu cachorro ?',
      'answers': [
        {'text': 'Lutero', 'score': 10},
        {'text': 'Lut', 'score': 5},
        {'text': 'Lute', 'score': 0}
      ]
    },
    {
      'questionText': 'O que o Tiago ama ?',
      'answers': [
        {'text': 'Comer', 'score': 3},
        {'text': 'Bleach', 'score': 5},
        {'text': 'Mirai Nikki', 'score': 10}
      ]
    },
  ];
  var questionsIndex = 0;
  var totalscore = 0;

  void restart() {
    setState(() {
      questionsIndex = 0;
      totalscore = 0;
    });
  }

  void answerQuestion(int score) {
    totalscore += score;

    setState(() {
      questionsIndex = questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Criando um MapSS

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Aleatório'),
        ),
        body: questionsIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                questionsIndex: questionsIndex)
            : Result(totalscore, restart),
      ),
    );
  }
}
