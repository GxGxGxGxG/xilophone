import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           // mainAxisAlignment: MainAxisAlignment.start,

           children: <Widget>[

             Container(
               color: Colors.blue,
                 child: TextButton(
                   onPressed: (){
                     final player = AudioCache();
                     player.play('note1.wav');
                   },
                   child: Text("Do"),
                 ),
             ),
             Container(
               color: Colors.red,
               child: TextButton(
                 onPressed: (){
                   final player = AudioCache();
                   player.play('note2.wav');
                 },
                 child: Text("Do"),
               ),
             ),
             Container(
               color: Colors.green,
               child: TextButton(
                 onPressed: (){
                   final player = AudioCache();
                   player.play('note3.wav');
                 },
                 child: Text("Do"),
               ),
             ),
             Container(
               color: Colors.black87,
               child: TextButton(
                 onPressed: (){
                   final player = AudioCache();
                   player.play('note4.wav');
                 },
                 child: Text("Do"),
               ),
             ),
             Container(
               color: Colors.purple,
               child: TextButton(
                 onPressed: (){
                   final player = AudioCache();
                   player.play('note5.wav');
                 },
                 child: Text("Do"),
               ),
             ),
             Container(
               color: Colors.orange,
               child: TextButton(
                 onPressed: (){
                   final player = AudioCache();
                   player.play('note6.wav');
                 },
                 child: Text("Do"),
               ),
             ),
             Container(
               color: Colors.teal,
               child: TextButton(
                 onPressed: (){
                   final player = AudioCache();
                   player.play('note7.wav');
                 },
                 child: Text("Do"),
               ),
             ),
           ],
         ),
        ),
      ),
    );
  }
}
