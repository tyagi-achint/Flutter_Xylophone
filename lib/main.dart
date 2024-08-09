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
    return TextButton(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Audio Player'),
          ),
          body: Column(
            children: [
              addButton(1, Colors.red),
              addButton(2, Colors.blue),
              addButton(3, Colors.green),
              addButton(4, Colors.yellow),
              addButton(5, Colors.purple),
              addButton(6, Colors.cyan),
              addButton(7, Colors.brown),
            ],
          )),
    );
  }
}
