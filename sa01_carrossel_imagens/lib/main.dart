// Situação de Aprendizagem 01 - Carrossel de Imagens no Flutter (Statelles)
// Usar lista de imagens para montar o carrossel no flutter
// Usaremos: flutter pub add carousel_slider

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:
          false, // Tira a tira vermelha escrito "debug" em cima da tela
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> imagens = [
    "https://i.pinimg.com/736x/2b/69/18/2b6918d3639f21c08d82b5c02d0f0a1f.jpg",
    "https://i.pinimg.com/736x/21/3a/35/213a35a38ab4bd38964af69c09609bea.jpg",
    "https://i.pinimg.com/736x/ef/4f/c0/ef4fc0196628475ec52ed85430f9d484.jpg",
    "https://i.pinimg.com/736x/d0/2b/35/d02b350bcc875cea28cf9e8379cd34b2.jpg",
    "https://i.pinimg.com/736x/f8/4d/c7/f84dc705b8f23ecdb8c650ec931b43c3.jpg",
    "https://i.pinimg.com/736x/81/07/6d/81076ddc4cb6737d4163b7a301906fe6.jpg",
    "https://i.pinimg.com/736x/3b/83/f5/3b83f5f6903a30d6bbfe56c4512f49c6.jpg",
    "https://i.pinimg.com/736x/eb/e6/3c/ebe63c70021938b95a8a307c34f2fdc9.jpg",
    "https://i.pinimg.com/736x/bf/61/74/bf6174e28f96bbe577e35512c26f1066.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Galeria de Imagens"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // Carrossel
            CarouselSlider(
              options: CarouselOptions(
                height: 300,
                autoPlay: true
              ),
              items: imagens.map(
                ((url)=>Container(
                  margin: EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(url,fit:BoxFit.cover, width:1000)
                  )
                ))
              ).toList()),
            // Galeria de Imagens
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // N. de Colunas
                  crossAxisSpacing: 8, // Espaçamento entre colunas
                  mainAxisSpacing: 8, // Espaçamento entre linhas
                ),
                itemCount: imagens.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => _mostrarImagem(context, imagens[index]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(imagens[index], fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarImagem(BuildContext context, String imagen) {
    // Mostrar imagem com mais detalhe ao clicá-la (busca por array)
    showDialog(
      context: context,
      builder: (context) => Dialog(child: Image.network(imagen)),
    );
  }
}
