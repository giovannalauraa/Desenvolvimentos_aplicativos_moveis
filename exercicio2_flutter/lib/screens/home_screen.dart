import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text(
          'Flutter By Example'),
        backgroundColor: Colors.blue,
        elevation: 4,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Image(
          image: AssetImage('../web/icons/Icon-192.png'),
          width: 800,
          height: 800,
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          elevation: 4,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.star,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}
