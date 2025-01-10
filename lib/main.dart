import 'package:flutter/material.dart';
import 'package:portfolio/presentation/home_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(
          0xff0C0C0C,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
