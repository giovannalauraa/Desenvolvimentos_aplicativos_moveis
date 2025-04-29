import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter Form Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController dataNascimentoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
              child: TextFormField(
                controller: nomeController,
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person), 
                ),
              ),
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 60,
              child: TextFormField(
                controller: telefoneController,
                decoration: const InputDecoration(
                  labelText: "Phone",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone), 
                ),
              ),
            ),
            const SizedBox(height: 10),

            SizedBox(
              height: 60,
              child: TextFormField(
                controller: dataNascimentoController,
                decoration: const InputDecoration(
                  labelText: "Dob",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.calendar_today), 
                ),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                final nome = nomeController.text;
                final telefone = telefoneController.text;
                final dataNascimento = dataNascimentoController.text;

                final mensagem =
                    'Nome: $nome\nTelefone: $telefone\nData de Nascimento: $dataNascimento';

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(mensagem),
                    duration: const Duration(seconds: 3),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.zero,
                ),
                textStyle: const TextStyle(fontSize: 14, color: Colors.black),
              ),
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
