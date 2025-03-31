import 'package:flutter/material.dart';
import 'exercicio1.dart';
import 'exercicio2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercícios Flutter - 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Exercícios de Flutter',
            style: TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Exercício 1',
                icon: Icon(Icons.looks_one),
              ),
              Tab(
                text: 'Exercício 2',
                icon: Icon(Icons.looks_two),
              ), 
            ],
            labelColor: Colors.white, 
            unselectedLabelColor: Colors.grey, 
          ),
        ),
        body: const TabBarView(
          children: [
            Exercicio1(title: 'Flutter is Fun!', appBarColor: Color(0xFF139B16)),
            Exercicio2(title: 'My Home Page', appBarColor: Color(0xFF0C5EB6)),
          ],
        ),
      ),
    );
  }
}
