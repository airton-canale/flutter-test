import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() restartQuiz;
  const Resultado(this.pontuacao, this.restartQuiz, {super.key});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens!';
    } else if (pontuacao < 12) {
      return 'Voce eh bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            fraseResultado,
            style: const TextStyle(fontSize: 28),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: restartQuiz,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: const Text('Reiniciar Perguntas'),
          ),
        ],
      ),
    );
  }
}
