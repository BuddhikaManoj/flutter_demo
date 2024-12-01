import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../widgets/custom_button.dart';

class JokeScreen extends StatefulWidget {
  @override
  _JokeScreenState createState() => _JokeScreenState();
}

class _JokeScreenState extends State<JokeScreen> {
  String joke = "Click the button to load a joke!";

  Future<void> loadJoke() async {
    try {
      final fetchedJoke = await fetchJoke();
      setState(() {
        joke = fetchedJoke;
      });
    } catch (e) {
      setState(() {
        joke = "Failed to load joke: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              joke,
              style: TextStyle(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          CustomButton(
            text: "New Joke",
            onPressed: loadJoke, // Calls the API when clicked
          ),
        ],
      ),
    );
  }
}
