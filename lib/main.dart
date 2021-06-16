import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded BuildKey({Color color, int soundnumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundnumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text(
            'MINI - XYLOPHONE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          )),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(color: Colors.red, soundnumber: 1),
              BuildKey(color: Colors.orange, soundnumber: 2),
              BuildKey(color: Colors.yellow, soundnumber: 3),
              BuildKey(color: Colors.green, soundnumber: 4),
              BuildKey(color: Colors.teal.shade700, soundnumber: 5),
              BuildKey(color: Colors.lightBlue.shade300, soundnumber: 6),
              BuildKey(color: Colors.indigo, soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
