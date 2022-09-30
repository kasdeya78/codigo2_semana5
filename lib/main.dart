import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  AudioCache audioCache = AudioCache();

  void playNote(int note) {
    audioCache.play("audios/note$note.wav");
  }

  Widget buildKey({required Color color, required int note}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playNote(note);
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Xylophone"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // buildKey(Colors.indigo, 1),
          // buildKey(Colors.red, 2),
          // buildKey(Colors.amber, 3),
          buildKey(color: Colors.pink, note: 1),
          buildKey(color: Colors.blue, note: 2),
          buildKey(color: Colors.yellow, note: 3),
        ],
      ),
    );
  }
}
