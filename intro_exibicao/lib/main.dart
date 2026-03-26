// Tela para estudo dos widgets de exibição (text, icon, image)

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // Configurações iniciais do App
      //Router -> Rotas de Navegação
      //Home -> Página Principal
      home: MyApp(),
      //themeApp -> Claro/Escuro
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar, drawer, bnBar, body, faButton, snakeBar
      appBar: AppBar(title: Text("Exemplos de Widget de Exibição")),
      body: SingleChildScrollView(
        //Para podermos scrollar para baixo
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Expanded(
            child: Column(
              children: [
                Text(
                  "Explorando o Flutter",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Image.network(
                  "https://i.pinimg.com/1200x/34/84/9f/34849f6be342c66603d1e67258b44f63.jpg",
                  height: 400,
                  fit: BoxFit.contain,
                ),

                Image.asset(
                  "assets/img/aguiar.jpg",
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
