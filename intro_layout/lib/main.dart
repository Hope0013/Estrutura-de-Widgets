// aplicativo de introdução ao uso de Widgets de Layout (Columns, Rows, Stacks, Containers)

//void main
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets de Layout"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 244, 3, 3),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.star)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 255, 145, 0),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.circle_outlined)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 255, 208, 0),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.javascript)
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 140, 244, 3),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.square)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 64, 255, 160),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.dangerous)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 0, 110, 255),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.cloud)
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 3, 27, 244),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.list)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 111, 0, 255),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.train)
                  ],
                ),
                Stack(
                  alignment: AlignmentGeometry.center,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 140, 22, 187),
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                    ),
                    Icon(Icons.headphones)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}