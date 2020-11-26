import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
            child: FlatButton(
              onPressed: () {
                final player = AudioCache();

                player.play('note1.wav');
              },
              child: Text('Click me'),
            ),
          ),
        ),
      ),
    );
  }
}
