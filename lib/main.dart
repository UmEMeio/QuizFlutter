import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State {
  var QuestoesIndex = 0;

  void Resposta() {
    setState(() {
      QuestoesIndex = QuestoesIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var Questoes = [
      'Qual seu anime favorito',
      'Qual nome de seu cachorro',
      'Oque o Tiago mais ama que bleach'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meu primeiro App'),
        ),
        body: Column(
          children: <Widget>[
            Question(Questoes[QuestoesIndex]),
            ElevatedButton(
              onPressed: Resposta,
              child: Text('Resposta - 1'),
            ),
            Text(Questoes[QuestoesIndex]),
            ElevatedButton(
              onPressed: Resposta,
              child: Text('Resposta - 2'),
            ),
            Text(Questoes[QuestoesIndex]),
            ElevatedButton(
              onPressed: Resposta,
              child: Text('Resposta - 3'),
            )
          ],
        ),
      ),
    );
  }
}
