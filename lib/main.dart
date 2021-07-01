import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color buttonColor, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
        ),
        child: Container(),
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(buttonColor: Colors.red, soundNumber: 1),
              buildKey(buttonColor: Colors.orange, soundNumber: 2),
              buildKey(buttonColor: Colors.yellow, soundNumber: 3),
              buildKey(buttonColor: Colors.green, soundNumber: 4),
              buildKey(buttonColor: Colors.teal, soundNumber: 5),
              buildKey(buttonColor: Colors.blue, soundNumber: 6),
              buildKey(buttonColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
