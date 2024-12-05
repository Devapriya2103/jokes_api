import 'package:flutter/material.dart';
import 'package:jokes_api/controller/joke_screen_controller.dart';
import 'package:provider/provider.dart';

class JokeScreen extends StatelessWidget {
  const JokeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final JokeScreenState = context.watch<JokeScreenController>();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<JokeScreenController>().getRandomJokes();
        },
        child: Icon(Icons.refresh),
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(JokeScreenState.jokeModel?.type.toString() ?? "type",
              style: TextStyle(fontSize: 14,color: Colors.black),
              ),
              Text(JokeScreenState.jokeModel?.setup.toString() ?? "setup",
              style: TextStyle(fontSize: 14,color: Colors.black),
              ),
              Text(JokeScreenState.jokeModel?.punchline.toString() ?? "punchline",
              style: TextStyle(fontSize: 14,color: Colors.black),
              ),
              Text(JokeScreenState.jokeModel?.id.toString() ?? "id",
              style: TextStyle(fontSize: 14,color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}