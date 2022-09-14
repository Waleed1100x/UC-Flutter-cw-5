import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num1 = 1;

  int num2 = 1;
  String A = "";
  void letsplay() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;
    if (num1 == num2) {
      A = "Draw";
    } else if (num1 == 1 && num2 == 2) {
      A = "Winner: Player 2 ";
    } else if (num1 == 2 && num2 == 1) {
      A = "Winner: Player 1 ";
    } else if (num1 == 2 && num2 == 3) {
      A = "Winner: Player 2";
    } else if (num1 == 3 && num2 == 2) {
      A = "Winner: Player 1";
    } else if (num1 == 1 && num2 == 3) {
      A = "Winner: Player 1 ";
    } else if (num1 == 3 && num2 == 1) {
      A = "Winner: Player 2 ";
    }
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Rock Papaer Scissors"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/i_$num1.png',
                    height: 120,
                    width: 120,
                  ),
                  Image.asset(
                    'assets/i_$num2.png',
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("player 1"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Player 2"),
                ),
              ],
            ),
            Container(
              width: 160,
              height: 80,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {
                  letsplay();
                },
                child: Text("Play"),
              ),
            ),
            Text("$A")
          ],
        )),
      ),
    );
  }
}
