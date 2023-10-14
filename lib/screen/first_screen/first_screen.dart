import 'package:bandung_tours/screen/second_screen/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  final String message = "Hello from First Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _navigateTo(context);
          },
          child: const Text('Navigate to First Screen'),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => SecondScreen(message: message),
      ),
    );
  }
}
