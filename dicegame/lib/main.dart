import 'dart:math';
import 'package:flutter/material.dart';

import './widgets/one_dot.dart';
import './widgets/two_dot.dart';
import './widgets/three_dot.dart';
import './widgets/four_dot.dart';
import './widgets/five_dot.dart';
import './widgets/six_dot.dart';
import './widgets/blank_dice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _fisrtIndex = 0;
  int _secondIndex = 0;
  final Map<int, Widget> allDots = {
    0: const BlankDice(),
    1: const OneDot(),
    2: const TwoDot(),
    3: const ThreeDot(),
    4: const FourDot(),
    5: const FiveDot(),
    6: const SixDot(),
  };

  int randomNumber() {
    Random random = Random();
    int randomNumber = random.nextInt(6) + 1;
    return randomNumber;
  }

  Widget _diceToShow(int index) {
    return allDots[index] as Widget;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _fisrtIndex = randomNumber();
                  _secondIndex = randomNumber();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              child: const Text(
                "Play",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            _diceToShow(_fisrtIndex),
            const SizedBox(
              height: 14,
            ),
            _diceToShow(_secondIndex),
          ],
        ),
      ),
    );
  }
}
