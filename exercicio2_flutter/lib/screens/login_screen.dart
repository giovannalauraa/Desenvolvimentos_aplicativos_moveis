import 'package:flutter/material.dart';
import '../models/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  final Login login = Login(usuario: 'admin', senha: '1234');

  void _login(BuildContext context) {
    final usuario = _usuarioController.text;
    final senha = _senhaController.text;

    if (login.autenticar(usuario, senha)) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Falha no login! Usuário ou senha incorretos.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '../web/icons/Icon-192.png', 
                      height: 80,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Flutter',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w300, 
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                TextField(
                  controller: _usuarioController,
                  decoration: const InputDecoration(labelText: 'Email',
                  border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(5)),),
                  ),
                ),
                const SizedBox(height: 10),

                TextField(
                  controller: _senhaController,
                  obscureText: true,
                  decoration: const InputDecoration(labelText: 'Password',
                  border: OutlineInputBorder( borderRadius: BorderRadius.all(Radius.circular(5)),),
                  ),
                ),
                const SizedBox(height: 10),

                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password'),
                  style: TextButton.styleFrom(foregroundColor: Colors.blue),
                ),
                const SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () => _login(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                         ),
                    ),
                
                ),
                const SizedBox(height: 20),

                TextButton(
                  onPressed: () {},
                  child: const Text('New User? Create Account.'),
                  style: TextButton.styleFrom(foregroundColor: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter By Example'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: FlutterLogo(size: 100),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.star),
      ),
    );
  }
}
