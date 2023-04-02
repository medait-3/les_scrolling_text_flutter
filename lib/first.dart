import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:text_scroll/text_scroll.dart';

class WelcomePage extends StatefulWidget {
  String name, email;
  WelcomePage({Key? key, required this.name, required this.email})
      : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // Step 2
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

// Step 3
  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(82.0),
                child: TextScroll(
                  '  ${widget.name}  ******************',
                  intervalSpaces: 10,
                  velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Text('Name: ${widget.name}'),
              Text('Email: ${widget.email}'),
            ],
          ),
        ),
      ),
    );
  }
}
