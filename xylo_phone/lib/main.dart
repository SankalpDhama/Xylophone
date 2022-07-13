import 'dart:ui';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded buildKey({a, Color colors}) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          playSound(a);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'XYLOPHONE',
            style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(a: 1, colors: Colors.red),
              buildKey(a: 2, colors: Colors.orange),
              buildKey(a: 3, colors: Colors.yellow),
              buildKey(a: 4, colors: Colors.lightGreen),
              buildKey(a: 5, colors: Colors.green),
              buildKey(a: 6, colors: Colors.blue),
              buildKey(a: 7, colors: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
