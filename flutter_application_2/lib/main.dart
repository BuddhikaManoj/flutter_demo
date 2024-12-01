import 'package:flutter/material.dart';
import 'screens/joke_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Inner padding
            child: Container(
              margin: EdgeInsets.all(8.0), // Outer margin
              child: Text(
                "Joke App",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: JokeScreen(), // Loads the JokeScreen widget
      ),
    );
  }
}
