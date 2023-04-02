import 'package:flutter/material.dart';

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
            children: [
              Text('Name: $name'),
              Text('Email: $email'),
            ],
          ),
        ),
      ),
    );
  }
}
