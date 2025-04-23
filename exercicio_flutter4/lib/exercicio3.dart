import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TarefaScreen(),
    );
  }
}

class TarefaScreen extends StatefulWidget {
  @override
  _TarefaScreenState createState() => _TarefaScreenState();
}

class _TarefaScreenState extends State<TarefaScreen> {
  List<Tarefa> tarefas = [
    Tarefa('Comprar legumes', false),
    Tarefa('Estudar Flutter', false),
    Tarefa('Fazer exercício', false),
    Tarefa('Estudar Francês', false),
    Tarefa('Jogar jogos', false),
  ];

  List<Tarefa> concluidas = [];

  int get tarefasIncompletas => tarefas.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, 
        title: Text(
          'Lista de Tarefas',
          style: TextStyle(color: Colors.white), 
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  _mostrarTarefasConcluidas(context);
                },
                child: Text('View completed tasks'),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You have $tarefasIncompletas uncompleted tasks',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: tarefas.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.yellow[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                  child: ListTile(
                    trailing: Checkbox(
                      activeColor: Colors.blue,
                      value: tarefas[index].concluida,
                      onChanged: (bool? value) {
                        setState(() {
                          tarefas[index].concluida = true;
                          concluidas.add(tarefas[index]);
                          tarefas.removeAt(index);
                        });
                      },
                    ),
                    title: Text(tarefas[index].nome),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _mostrarAlertDialog(context);
        },
        backgroundColor: Colors.blue, 
        foregroundColor: Colors.white, 
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }

  void _mostrarAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Informação'),
          content: Text('Você está no App de Notas de Tarefas'),
          actions: <Widget>[
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _mostrarTarefasConcluidas(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tarefas Concluídas'),
          content: SizedBox(
            width: double.maxFinite,
            child: concluidas.isEmpty
                ? Text('Nenhuma tarefa concluída ainda.')
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: concluidas.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            concluidas[index].concluida = false;
                            tarefas.add(concluidas[index]);
                            concluidas.removeAt(index);
                          });
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.yellow[200],
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Text(concluidas[index].nome),
                        ),
                      );
                    },
                  ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class Tarefa {
  String nome;
  bool concluida;

  Tarefa(this.nome, this.concluida);
}
