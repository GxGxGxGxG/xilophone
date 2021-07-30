import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int i)
  {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildK({Color color1,int soundNumber})
  {
    return Expanded(
      child: FlatButton(
        onPressed:(){
          playSound(soundNumber);
        },
        color:color1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           // mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
             buildK(color1 : Colors.red,soundNumber : 1),
             buildK(color1 : Colors.blue,soundNumber : 2),
             buildK(color1 : Colors.yellow,soundNumber : 3),
             buildK(color1 : Colors.green,soundNumber : 4),
             buildK(color1 : Colors.deepOrangeAccent,soundNumber : 5),
             buildK(color1 : Colors.indigo,soundNumber : 6),
             buildK(color1 : Colors.black,soundNumber : 7),
           ],
         ),
        ),
      ),
    );
  }
}
