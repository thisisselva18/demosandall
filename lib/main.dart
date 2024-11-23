import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Ye old game of Majik 8 ball!",
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ));
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballno = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(248, 99, 134, 187),
        appBar: AppBar(
            backgroundColor: Color.fromARGB(225, 245, 91, 91),
            title: const Text("Ye old game of Majik 8 ball!")),
        body: Center(
          child: MaterialButton(
              onPressed: () {
                setState(() {
                  ballno = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/images/ball$ballno.png')),
        ));
  }
}
