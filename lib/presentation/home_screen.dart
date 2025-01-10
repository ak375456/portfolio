import 'package:flutter/material.dart';
import 'package:portfolio/util/custom_top_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomTopAppbar(),
        ],
      ),
    );
  }
}
