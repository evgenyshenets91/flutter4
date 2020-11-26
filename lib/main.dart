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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                FlatButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    playSound(1);
                  },
                ),
                FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(2);
                  },
                ),
                FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(3);
                  },
                ),
                FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  },
                ),
                FlatButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    playSound(5);
                  },
                ),
                FlatButton(
                  color: Colors.black,
                  onPressed: () {
                    playSound(6);
                  },
                ),
                FlatButton(
                  color: Colors.pinkAccent,
                  onPressed: () {
                    playSound(7);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
