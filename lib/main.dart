// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {"/": (context) => HomeScreen()},
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // setting background color to black
        appBarTheme: AppBarTheme(backgroundColor: Colors.black), // setting appbar color to black
        brightness: Brightness.dark,// setting dark mode
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
