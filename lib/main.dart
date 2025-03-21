import 'package:flutter/material.dart';
import 'package:roll_dice_app/components/gradient_container.dart';
import 'package:roll_dice_app/components/widgets/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF003566)),
      ),
      home: const MyHomePage(title: 'Roll Mo Dice Ko'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF003566),
        title: AppBarText(widget.title)
      ),
  
      body: GradientContainer()
    );
  }
}

