import 'package:cosmic_curators/screens/aframe.dart';
import 'package:cosmic_curators/screens/home.dart';
import 'package:cosmic_curators/screens/pspgame.dart';
import 'package:flutter/rendering.dart';

import '../screens/arview.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flame_audio/flame_audio.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  RenderErrorBox.backgroundColor = Colors.white;
  ErrorWidget.builder = (FlutterErrorDetails details) => Scaffold();
  await Permission.camera.request();
  await Permission.microphone.request();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => home(),
        '/arview': (context) => arview(),
        '/pspgame': (context) => pspgame(),
        '/aframe': (context) => arframe(),

        // When navigating to the "/second" route, build the SecondScreen widget.
      },
    ),
  );
}
