import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Text('hello'),
        ),
      ),);
  }
}
