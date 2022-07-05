import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    AssetsAudioPlayer.newPlayer().open(Audio("assets/note$soundNumber.wav"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Color.fromARGB(255, 245, 75, 75),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Color.fromARGB(255, 235, 243, 8),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Color.fromARGB(255, 3, 235, 100),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Color.fromARGB(255, 4, 84, 243),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Color.fromARGB(255, 255, 1, 242),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Color.fromARGB(255, 248, 1, 1),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    color: Color.fromARGB(255, 1, 113, 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
