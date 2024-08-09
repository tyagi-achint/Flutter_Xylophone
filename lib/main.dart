import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final player = AudioPlayer();

  addButton(int i, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          player.play(AssetSource('note$i.wav'));
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(color),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0), // Rounded corners
            ),
          ),
        ),
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: const Text(
                'XyloPhone',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              addButton(1, Colors.red),
              addButton(2, Colors.blue),
              addButton(3, Colors.green),
              addButton(4, Colors.yellow),
              addButton(5, Colors.purple),
              addButton(6, Colors.cyan),
              addButton(7, Colors.brown),
            ],
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
