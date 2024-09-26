import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(String sound) {
    final player = AudioCache();
    player.play('$sound.wav');
  }

  Widget buildKey(Color color, String sound) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        child: Container(
          color: color,
        ),
        style: TextButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Xylophone'),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            children: [
              buildKey(Colors.red, 'note1'),
              buildKey(Colors.orange, 'note2'),
              buildKey(Colors.yellow, 'note3'),
              buildKey(Colors.teal, 'note4'),
              buildKey(Colors.green, 'note5'),
              buildKey(Colors.blue, 'note6'),
              buildKey(Colors.purple, 'note7'),
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
