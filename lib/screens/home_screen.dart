import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purpleAccent,
        padding: const EdgeInsets.all(16.0),
        child: const Center(
          child: Text("Coins Tap"),
        ),
      ),
    );
  }
}
