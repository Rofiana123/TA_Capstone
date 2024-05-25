import 'package:flutter/material.dart';
import 'package:tugasakhir/SwitchButton/switchbutton.dart';
import 'package:tugasakhir/WaterMonitor/WaterMonitoring.dart';

class Lobbychoice extends StatefulWidget {
  const Lobbychoice({super.key});

  @override
  State<Lobbychoice> createState() {
    return _LobbychoiceState();
  }
}

class _LobbychoiceState extends State<Lobbychoice> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: const Text(
                'Main Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SwitchButton()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                backgroundColor: Color.fromARGB(255, 0, 86, 177),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text('Tools'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MonitorPage()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                backgroundColor: Color.fromARGB(255, 0, 86, 177),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Text('Water Monitoring'),
            ),
          ],
        ),
      ),
    );
  }
}
