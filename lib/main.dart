import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('Click Here'),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Xylopnone App'),
          backgroundColor: Colors.teal[900],
        ),
        body: SafeArea(
          // ignore: deprecated_member_use

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.deepPurple, soundNumber: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
