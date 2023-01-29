import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Colors.red.shade200,
          appBar: AppBar(
            title: const Text('Dice App'),
            centerTitle: true,
            backgroundColor: Colors.red.shade300,
          ),
          body: const SafeArea(child: DicePage())),
    );
  }
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('asd'),
    );
  }
}
