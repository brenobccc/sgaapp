import 'package:flutter/material.dart';

class TelaDeInfoWidget extends StatelessWidget {
  final String conteudo;

  const TelaDeInfoWidget({Key key, this.conteudo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(conteudo);
  }
}
