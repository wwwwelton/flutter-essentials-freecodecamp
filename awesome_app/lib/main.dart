import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: Container(
        height: 100,
        color: Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.red,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.yellow,
              alignment: Alignment.center,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              color: Colors.green,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
