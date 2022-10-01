import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:audioplayers/audioplayers.dart';

import 'dart:io';

class pspgame extends StatefulWidget {
  final receiveData;
  const pspgame({super.key, this.receiveData});

  @override
  State<pspgame> createState() => _pspgameState();
}

class _pspgameState extends State<pspgame> {
  final player = AudioPlayer();
  final backplayer = AudioPlayer();
  var background = "assets/travelwarp.gif";
  int speed = 0;
  void _incrementSpeed() {
    setState(() {
      speed++;
    });
  }

  int _counter = 0;

  bool _buttonPressed = false;
  bool _loopActive = false;

  void increaseCounterWhilePressed() async {
    if (_loopActive) return; // check if loop is active

    _loopActive = true;
    setState(() {
      background = "assets/travelwarpspeed.gif";
    });
    while (_buttonPressed) {
      // do your thing
      setState(() {
        speed++;
        _counter++;
      });

      // wait a second
      await Future.delayed(Duration(milliseconds: 1000));
    }
    setState(() {
      background = "assets/travelwarp.gif";
    });

    player.stop();
    _loopActive = false;
  }

  int temp = 0;
  @override
  void initState() {
    backplayer.setVolume(.25);
    speed = widget.receiveData;
    backplayer.play(AssetSource('spacesound.mp3'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(2, 17, 38, 1),
      appBar: AppBar(
          centerTitle: true,
          title: Text("Cosmic Curators"),
          elevation: 0,
          backgroundColor: Color.fromRGBO(2, 17, 38, 1)),
      body: Container(
        child: Column(
          children: [
            Text(
              "Speed:" + '$speed',
              style: TextStyle(height: 5, fontSize: 20, color: Colors.white),
            ),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit
                        .cover, //I assumed you want to occupy the entire space of the card
                    image: AssetImage(background),
                  ),
                ),
                child: ListTile(
                  // leading: Text(
                  //   'Testing the ListTile',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  contentPadding: EdgeInsets.all(60),
                  title: CustomPaint(
                    size: Size(120, 120),
                    painter: CirclePainter(255, 255 - speed, 255 - speed),
                  ),
                  subtitle: Text("Speed:" + '$speed'),
                ),
              ),
            ),
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/e/e1/Parker_Solar_Probe_spacecraft_model.png'),
                    ),
                    title: Text('Distance From Sun',
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text(
                      '90,044,592 km',
                    ),
                  ),
                ],
              ),
              elevation: 0,
              color: Color.fromRGBO(70, 73, 79, 45),
            ),
            Listener(
              onPointerDown: (details) {
                _buttonPressed = true;
                increaseCounterWhilePressed();
                player.play(AssetSource("spaceengine.mp3"));
              },
              onPointerUp: (details) {
                _buttonPressed = false;
              },
              child: IconButton(
                icon: Image.asset('assets/accelerator.png'),
                iconSize: 100,
                onPressed: () {
                  _incrementSpeed();
                  player.play(AssetSource("enginesound.mp3"));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  var r, g, b;
  CirclePainter(var r, var g, var b) {
    this.r = r;
    this.g = g;
    this.b = b;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Color.fromRGBO(r, g, b, 1)
      ..strokeWidth = 15;

    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, 50, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
