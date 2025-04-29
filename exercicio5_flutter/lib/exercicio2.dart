import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Tema Azul',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const TelaInicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThemeData'),
      ),
      body: const Center(
        child: Text(
          'Fundo azul aplicado via ThemeData!',
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}