import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  final String title;
  final Color appBarColor;

  const Exercicio2({super.key, required this.title, required this.appBarColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(title, style: const TextStyle(color: Colors.white)),
        centerTitle: true, 
      ),
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFF0C5EB6),
              ),
            ),
            const SizedBox(
              width: 200.0,
              height: 50.0,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, left: 8.0),
                child: Text(
                  'SizedBox!',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Botão pressionado!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
                foregroundColor: Colors.white,
                alignment: Alignment.centerLeft, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              child: const Text('A button'),
            ),
          ],
        ),
      ),
    );
  }
}
