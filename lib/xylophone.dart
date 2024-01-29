import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int? play) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/note$play.wav'));
  }

  Expanded buildKey({Color? color, int? num}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(num);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: Text('Xylophone'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, num: 1),
            buildKey(color: Colors.orange, num: 2),
            buildKey(color: Colors.yellow, num: 3),
            buildKey(color: Colors.green, num: 4),
            buildKey(color: Colors.blue, num: 5),
            buildKey(color: Colors.indigo, num: 6),
            buildKey(color: Colors.purple, num: 7),
          ],
        ),
      ),
    );
  }
}
