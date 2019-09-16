import 'package:flutter/material.dart';
import "package:audioplayers/audio_cache.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.cyan,
          body: SafeArea(
            child: Xylophone(),
          ),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {

  final player = new AudioCache();
  void  playSound  (int noteNumber) async {
    try{
      player.play('note$noteNumber.wav');
    }catch(e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.red,
              onPressed: () => playSound(1),
              child: Text(''),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.blue,
                onPressed: () => playSound(2),
              child: Text(''),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.amber,
              onPressed: () => playSound(3),
              child: Text(''),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.greenAccent,
              onPressed: () => playSound(4),
              child: Text(''),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.cyan,
              onPressed: () => playSound(5),
              child: Text(''),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.white,
              onPressed: () => playSound(6),
              child: Text(''),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              color: Colors.red,
              onPressed: () => playSound(7),
              child: Text(''),
            ),
          ),
        ],
      ),
    );
  }
}
