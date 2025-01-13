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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(
          0xff0C0C0C,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Color(
                0xff2C2C2C,
              ),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  8.0,
                ),
              ),
            ),
            textStyle: WidgetStateProperty.all(
              TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
