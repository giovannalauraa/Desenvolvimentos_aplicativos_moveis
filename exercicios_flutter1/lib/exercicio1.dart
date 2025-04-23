import 'package:flutter/material.dart';

class Exercicio1 extends StatelessWidget {
  final String title;
  final Color appBarColor;

  const Exercicio1({super.key, required this.title, required this.appBarColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 50.0),
          Center(
            child: Container(
              margin: const EdgeInsets.only(right: 100.0, top: 10.0),
              color: Colors.orange[900],
              width: 100.0,
              height: 100.0,
              child: const Padding(
                padding: EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text(
                  'Hi mom! 🐣',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
