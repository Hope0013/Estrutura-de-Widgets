// Aplicativo usando StateFull (Mudança de Estad0 => ReBuild da Tela)

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Método que identifica as mudanças de estado e chama a reconstrução da tela
  @override
  State<MyApp> createState() => _MyAppState(); // Arrow function
}

// Classe criada ara construir a janela, toda ação é escrita aqui
class _MyAppState extends State<MyApp> {
  // Variável para identidicar o nº de clicks no botão
  int contador = 0;

  // Build da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aplicativo com StateFull - Contador"),),
      // Padding --> Espaçamento interno
      body: Padding(
        // Espaço de 8px em todos os lados 
        padding: EdgeInsets.all(8),
        // Alinha os elementos no meio da tela(se guia pela lateral, não pelas margens superiores e inferiores)
        child: Center(
          // Coluna permite adicionar mais de um elemento
          child: Column(
            // Alinha no centro exato da tela, se paseando em todos os lados
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Número de Clicks: $contador", style: TextStyle(fontSize: 20),),
              // Adicionar um botão --> Todo botão permite criar uma ação ao ser precionado
              ElevatedButton(
                // onPressed: (){}... Ação do botão (){} --> Função normal ou ()=> Arrow function
                onPressed: () {
                  // Obrigatoriamente precissamos de um "setState" para que podermos fazer a mudança de estado
                  setState(() {
                    contador++; // Adiciona no contador +1
                  });
                }, 
                child: Text("Adicionar +1"))
            ],
          ),
        ),),
    ); // Arrow function
  }
}
