import 'package:flutter/material.dart';

void main() {
  runApp(const ConstraintDemoApp());
}

class ConstraintDemoApp extends StatelessWidget {
  const ConstraintDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de Constraints',
      home: const ConstraintExamples(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ConstraintExamples extends StatelessWidget {
  const ConstraintExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplos de Constraints'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'ConstrainedBox',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Container(
            color: Colors.redAccent.withOpacity(0.3),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 100,
                minHeight: 100,
                maxWidth: 200,
                maxHeight: 200,
              ),
              child: Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ),
          ),
          const SizedBox(height: 20),

          const Text(
            'UnconstrainedBox (ignora o pai)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          UnconstrainedBox(
            child: Container(
              color: Colors.green,
              width: 300,
              height: 100,
            ),
          ),
          const SizedBox(height: 20),

          const Text(
            'SizedBox com tamanho fixo',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 150,
            height: 150,
            child: ColoredBox(color: Colors.orange),
          ),
          const SizedBox(height: 20),

          const Text(
            'OverflowBox (permite ultrapassar limites)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey[300],
              child: const OverflowBox(
                maxWidth: 200,
                maxHeight: 200,
                child: ColoredBox(
                  color: Colors.purple,
                  child: SizedBox(width: 200, height: 200),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
