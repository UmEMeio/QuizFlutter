import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultadoScore;
  final VoidCallback reset;
  Result(this.resultadoScore, this.reset);

  String get mensagemRespostas {
    String mensagem = 'Você finalizou';
    if (resultadoScore <= 5) {
      mensagem = 'Você acertou só uma :(';
    } else if (resultadoScore <= 15) {
      mensagem = 'Talvez algum dia ';
    } else if (resultadoScore <= 30) {
      mensagem = 'Eu sei mesmo';
    } else {
      mensagem = 'Apenas quem quer erras chega aqui';
    }
    return mensagem;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          mensagemRespostas,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        TextButton(onPressed: reset, child: Text('Reiniciar o Quiz'))
      ],
    ));
  }
}
