import 'package:flutter/material.dart';
import 'package:portfolio/util/cusotm_top_appbar/custom_top_appbar_desktop.dart';
import 'package:portfolio/util/cusotm_top_appbar/custom_top_appbar_mobile.dart';
import 'package:portfolio/util/home_section/home_section_desktop.dart';
import 'package:portfolio/util/home_section/home_section_mobile.dart';
import 'package:portfolio/util/tools_section/tools_section_mobile.dart';
import 'package:portfolio/util/tools_section/tools_section_website.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1080 || constraints.maxHeight > 1920) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTopAppbarDesktop(),
                    SizedBox(height: 120),
                    HomeSectionWebsite(),
                    SizedBox(height: 120),
                    ToolsSectionWebsite()
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    CustomTopAppBarMobile(),
                    SizedBox(height: 24.0),
                    HomeSectionMobile(),
                    SizedBox(height: 24.0),
                    ToolsSectionMobile(),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
