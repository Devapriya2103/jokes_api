import 'package:flutter/material.dart';
import 'package:jokes_api/controller/joke_screen_controller.dart';
import 'package:jokes_api/view/joke_screen/joke_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JokeScreenController(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JokeScreen(),
      ),
    );
  }
}