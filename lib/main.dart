import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();

    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
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
        backgroundColor: Colors.redAccent[200],
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.green[200], soundNumber: 1),
                buildKey(color: Colors.green[300], soundNumber: 2),
                buildKey(color: Colors.green[400], soundNumber: 3),
                buildKey(color: Colors.green[500], soundNumber: 4),
                buildKey(color: Colors.green[600], soundNumber: 5),
                buildKey(color: Colors.green[700], soundNumber: 6),
                buildKey(color: Colors.green[800], soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
