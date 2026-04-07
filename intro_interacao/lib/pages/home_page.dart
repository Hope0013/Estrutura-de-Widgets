// Tel Inicial

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meu Aplicativo Interativo"),),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://i.pinimg.com/736x/70/ef/2a/70ef2af38cf579df6e7df60f2ca9c102.jpg",
              width: 150,
              height: 150,
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: ()=> Navigator.pushNamed(context, "/form"), 
                child: Text("Formulário")),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: ()=> Navigator.pushNamed(context, "/contato"), 
                child: Text("Contato")),
            ],
          ),
        ),
        ),
    );
  }
}