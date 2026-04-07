import 'package:flutter/material.dart';
import 'package:intro_interacao/pages/contato.dart';
import 'package:intro_interacao/pages/formulario.dart';
import 'package:intro_interacao/pages/home_page.dart';


// Sistema de rotas para navegação entre telas

// Home
// Form
// Contato
void main(List<String> args) {
  runApp(MaterialApp(
      // Rotas
      routes: 
      {
        "/": (context) => HomePage(),
        "/form": (context) => FormularioPage(),
        "/contato": (context) => ContatoPage(),
      },

      initialRoute: "/",
    ));
}