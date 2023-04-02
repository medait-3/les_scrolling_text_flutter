import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

class WelcomePage extends StatelessWidget {
  String name, email;
  WelcomePage({Key? key, required this.name, required this.email})
      : super(key: key);

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
                  '  $name  ******************',
                  intervalSpaces: 10,
                  velocity: Velocity(pixelsPerSecond: Offset(50, 0)),
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
              Text('Name: $name'),
              Text('Email: $email'),
            ],
          ),
        ),
      ),
    );
  }
}
