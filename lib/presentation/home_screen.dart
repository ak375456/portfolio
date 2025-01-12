import 'package:flutter/material.dart';
import 'package:portfolio/util/cusotm_top_appbar/custom_top_appbar_desktop.dart';
import 'package:portfolio/util/cusotm_top_appbar/custom_top_appbar_mobile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1080 || constraints.maxHeight > 1920) {
              return CustomTopAppbarDesktop();
            } else {
              return CustomTopAppBarMobile();
            }
          },
        ),
      ),
    );
  }
}
