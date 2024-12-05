import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jokes_api/model/joke_model.dart';

class JokeScreenController with ChangeNotifier {
  JokeModel? jokeModel;

  void getRandomJokes() async {
    final url = Uri.parse("https://official-joke-api.appspot.com/random_joke");
    try {
      final response = await http.get(url);

      if (response.statusCode >= 200 && response.statusCode < 300) {

        jokeModel = jokeModelFromJson(response.body);

      } else {
        log("Api failde with status code : ${response.statusCode}");
      }

    } catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }

}