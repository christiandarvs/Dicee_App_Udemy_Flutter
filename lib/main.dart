import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 124, 147, 159),
          appBar: AppBar(
            title: const Text('Dice App'),
            centerTitle: true,
            backgroundColor: const Color(0xff3F51B5),
          ),
          body: const SafeArea(child: DicePage())),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDieNumber = 1;
  int leftDieNumber = 1;
  void rollDice() {
    leftDieNumber = Random().nextInt(6) + 1;
    rightDieNumber = Random().nextInt(6) + 1;
    debugPrint('$leftDieNumber');
    debugPrint('$rightDieNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$leftDieNumber.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('images/dice$rightDieNumber.png'),
                ),
              ),
            ],
          ),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  rollDice();
                });
              }),
              child: const Text('Roll Dice'))
        ],
      ),
    );
  }
}
