import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false, // Remove flag de debug
      home: ToDoList(),
    ),
  );
}

// ST --> Snipets (atalhos para fazer o código)

// Janela do Alicativo
//1ª Class: identifica a mudança de estado
class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

// 2ª Class: Lógica de construçaõ da janela
class _ToDoListState extends State<ToDoList> {
  //Atributos - Caracteristicas

  //final
  final TextEditingController _tarefaController =
      TextEditingController(); // Pega o valor do input
  // Map é uma lista sem index, no lugar ele tem uma chave. O nome do conjunto ce key e o valor é "COLEÇÂO"
  final List<Map<String, dynamic>> _tarefas = [];
  //Métodos - Execuções
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Tarefas"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              controller: _tarefaController,
              decoration: InputDecoration(labelText: "Digite uma Tarefa..."),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _adicionarTarefa,
              child: Text("Adicionar Tarefa"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tarefas.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    _tarefas[index]["titulo"],
                    style: TextStyle(
                      decoration: _tarefas[index]["concluida"]
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  leading: Checkbox(
                    value: _tarefas[index]["concluida"],
                    onChanged: (bool? valor) => setState(() {
                      _tarefas[index]["concluida"] = valor!;
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _adicionarTarefa() {
    if (_tarefaController.text.trim().isNotEmpty) {
      setState(() {
        // Adiciona tarefa a lista
        _tarefas.add({"titulo": _tarefaController.text, "concluida": false});

        // Limpa o campo input
        _tarefaController.clear();
      });
    }
  }
}
