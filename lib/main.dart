import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
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
            title: const Text(
              'Perguntas',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: <Widget>[
              Questao(perguntas[perguntaSelecionada]),
              Resposta('Resposta 1', _responder),
              Resposta('Resposta 2', _responder),
              Resposta('Resposta 3', _responder)
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
