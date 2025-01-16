import 'package:flutter/material.dart';
import 'package:portfolio/util/contact_us_section/contact_us_section_desktop.dart';
import 'package:portfolio/util/contact_us_section/contact_us_section_mobile.dart';
import 'package:portfolio/util/cusotm_top_appbar/custom_top_appbar_desktop.dart';
import 'package:portfolio/util/cusotm_top_appbar/custom_top_appbar_mobile.dart';
import 'package:portfolio/util/home_section/home_section_desktop.dart';
import 'package:portfolio/util/home_section/home_section_mobile.dart';
import 'package:portfolio/util/project_section/project_section_desktop.dart';
import 'package:portfolio/util/project_section/project_section_mobile.dart';
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
                  spacing: 120.0,
                  children: [
                    CustomTopAppbarDesktop(),
                    HomeSectionWebsite(),
                    ToolsSectionWebsite(),
                    Text(
                      "Projects",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    ProjectSectionDesktop(),
                    ContactUsSectionDesktop()
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                child: Column(
                  spacing: 24.0,
                  children: [
                    CustomTopAppBarMobile(),
                    HomeSectionMobile(),
                    ToolsSectionMobile(),
                    Text(
                      "Projects",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    ProjectSectionMobile(),
                    ContactUsSectionMobile()
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
