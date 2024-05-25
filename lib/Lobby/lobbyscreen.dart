import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tugasakhir/Lobby/lobbychoice.dart';
import 'package:tugasakhir/Home/startscreen.dart';

class Lobby extends StatefulWidget {
  const Lobby({super.key});

  @override
  State<Lobby> createState() {
    return _LobbyState();
  }
}

class _LobbyState extends State<Lobby> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Lobbychoice();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 91, 93, 128),
                Color.fromARGB(235, 158, 152, 214),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
