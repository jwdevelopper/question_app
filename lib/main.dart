import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(QuestionApp());

class QuestionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: const Center(child: Text('Corpo')),
      ),
    );
  }
}
