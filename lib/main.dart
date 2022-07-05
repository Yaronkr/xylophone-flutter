import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    AssetsAudioPlayer.newPlayer().open(Audio("assets/note$soundNumber.wav"));
  }

  Expanded buildKey({color, soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          padding: EdgeInsets.all(0.0),
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.yellow, soundNumber: 2),
                buildKey(color: Colors.green, soundNumber: 3),
                buildKey(color: Colors.blue, soundNumber: 4),
                buildKey(color: Colors.white, soundNumber: 5),
                buildKey(color: Colors.orange, soundNumber: 6),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
