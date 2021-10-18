import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String Questiontexto;
  Question(this.Questiontexto);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        Questiontexto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
