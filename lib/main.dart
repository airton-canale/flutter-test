import 'package:flutter/material.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
   var perguntaSelecionada = 0;

  void _responder() {
    setState(() {
    perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual eh a sua cor favorita?',
      'Qual eh o seu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]),
            OutlinedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
             OutlinedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
             OutlinedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            )
          ],
        )
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}