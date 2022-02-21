import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(QuestionApp());

class QuestionApp extends StatelessWidget {
  var perguntaSelecionada = 1;

  void responder() {
    perguntaSelecionada++;
    print("valor: " + perguntaSelecionada.toString());
  }

  void Function() funcaoRetornaFuncao() {
    return (() => print("chamou a função que retorna função"));
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é sua cor favorita?",
      "Qual é seu animal favorito?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
                onPressed: responder, child: const Text("Resposta 01")),
            ElevatedButton(
                onPressed: responder, child: const Text("Resposta 02")),
            ElevatedButton(
                onPressed: responder, child: const Text("Resposta 03")),
          ],
        ),
      ),
    );
  }
}
