import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({ required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
            backgroundColor:
            MaterialStateProperty.all(color),),
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text('')
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color : Colors.red, soundNumber: 1),
                  buildKey(color : Colors.orange, soundNumber: 2),
                  buildKey(color : Colors.yellow, soundNumber: 3),
                  buildKey(color : Colors.green, soundNumber: 4),
                  buildKey(color : Colors.blue, soundNumber: 5),
                  buildKey(color : Colors.indigoAccent, soundNumber: 6),
                  buildKey(color : Colors.indigo, soundNumber: 7),

                  // Expanded(
                  //   child: TextButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //         MaterialStateProperty.all(Colors.red),
                  //       ),
                  //       onPressed: () {
                  //         playSound(1);
                  //       },
                  //       // style: TextStyle(color: Colors.red),
                  //       child: Text('')),
                  // ),
                  // Expanded(
                  //   child: TextButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //         MaterialStateProperty.all(Colors.orange),
                  //       ),
                  //       onPressed: () {
                  //         playSound(2);
                  //       },
                  //       child: Text('')),
                  // ),
                  // Expanded(
                  //   child: TextButton(
                  //     style: ButtonStyle(
                  //         backgroundColor:
                  //         MaterialStateProperty.all(Colors.yellow),
                  //     ),
                  //       onPressed: () {
                  //         playSound(3);
                  //       },
                  //       child: Text('')),
                  // ),
                  // Expanded(
                  //   child: TextButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStateProperty.all(Colors.green),
                  //       ),
                  //       onPressed: () {
                  //         playSound(4);
                  //       },
                  //       child: Text('')),
                  // ),
                  // Expanded(
                  //   child: TextButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //         MaterialStateProperty.all(Colors.blue),
                  //       ),
                  //       onPressed: () {
                  //         playSound(5);
                  //       },
                  //       child: Text('')),
                  // ),
                  // Expanded(
                  //   child: TextButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //         MaterialStateProperty.all(Colors.indigoAccent),
                  //       ),
                  //       onPressed: () {
                  //         playSound(6);
                  //       },
                  //       child: Text('')),
                  // ),
                  // Expanded(
                  //   child: TextButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:
                  //         MaterialStateProperty.all(Colors.indigo),
                  //       ),
                  //       onPressed: () {
                  //         playSound(7);
                  //       },
                  //       child: Text('')),
                  // )
                ],
            ),
          ),
      ),
    );
  }
}
