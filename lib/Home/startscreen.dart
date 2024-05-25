import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startLobby, {super.key});

  final void Function() startLobby;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/water-tank.png',
            width: 250,
          ),
          SizedBox(height: 40),
          Text(
            'Water Level Monitoring',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startLobby,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Now!'),
          )
        ],
      ),
    );
  }
}
