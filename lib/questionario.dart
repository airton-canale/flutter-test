import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List perguntas;
  final void Function(int) responder;
  const Questionario(
      this.perguntas, this.perguntaSelecionada, this.responder,
      {super.key});

    bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic>? respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas'] as List
        : null;
        
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas!.map((resp) => Resposta(resp['texto'], () => responder(resp['pontuacao']))),
      ],
    );
  }
}
