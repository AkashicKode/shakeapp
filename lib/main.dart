import 'package:flutter/material.dart';
import 'dart:math';
import 'package:shake/shake.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
   final _imageList = <Ink>[
    Ink.image(
      image: const AssetImage("assets/muffins.jpg"),
      width: 500,
      height: 500,
    ),
    Ink.image(
      image: const AssetImage("assets/bagels.jpg"),
      width: 500,
      height: 500,
    ),
    Ink.image(
      image: const AssetImage("assets/pancakes.jpg"),
      width: 500,
      height: 500,
    ),
    Ink.image(
      image: const AssetImage("assets/zucchini.jpg"),
      width: 500,
      height: 500,
    ),
  ];

  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        setState(() {
        });
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    debugPrint("hi");
    int ran = Random().nextInt(4);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _imageList[ran],
      ), 
    );
  }
}