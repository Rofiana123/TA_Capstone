import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MonitorPage extends StatefulWidget {
  @override
  _MonitorPageState createState() => _MonitorPageState();
}

class _MonitorPageState extends State<MonitorPage> {
  void _openPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 0, 5, 98),
                Color.fromARGB(235, 12, 0, 115),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Water Monitoring',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  initialLabelIndex: 1,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  labels: ['ON', 'OFF'],
                  activeBgColors: [
                    [Colors.blue],
                    [Colors.pink]
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                SizedBox(height: 30),
                Container(
                  alignment: Alignment.center,
                  height: 150.0,
                  width: 100.0,
                  child: LiquidLinearProgressIndicator(
                    value: 0.5,
                    valueColor: AlwaysStoppedAnimation(
                        Color.fromARGB(255, 62, 112, 182)),
                    backgroundColor: Color.fromARGB(255, 86, 83, 83),
                    borderColor: Color.fromARGB(255, 165, 165, 167),
                    borderWidth: 10.0,
                    borderRadius: 12.0,
                    direction: Axis.vertical,
                    center: Text(
                      "50%",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                      backgroundColor: Color.fromARGB(255, 0, 86, 177),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: const Text('Back'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
