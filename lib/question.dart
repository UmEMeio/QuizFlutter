import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String Questiontexto;
  Question(this.Questiontexto);
  @override
  Widget build(BuildContext context) {
    return Text(Questiontexto);
  }
}
