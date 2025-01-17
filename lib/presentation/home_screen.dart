import 'package:flutter/material.dart';
import 'package:portfolio/util/contact_us_section/contact_us_section_desktop.dart';
import 'package:portfolio/util/contact_us_section/contact_us_section_mobile.dart';
import 'package:portfolio/util/cusotm_top_appbar/custom_top_appbar_desktop.dart';
import 'package:portfolio/util/cusotm_top_appbar/custom_top_appbar_mobile.dart';
import 'package:portfolio/util/home_section/home_section_desktop.dart';
import 'package:portfolio/util/home_section/home_section_mobile.dart';
import 'package:portfolio/util/project_section/project_section_desktop.dart';
import 'package:portfolio/util/project_section/project_section_mobile.dart';
import 'package:portfolio/util/send_main_section/send_mail_section_desktop.dart';
import 'package:portfolio/util/send_main_section/send_mail_section_mobile.dart';
import 'package:portfolio/util/social_media_section/social_media_section_desktop.dart';
import 'package:portfolio/util/social_media_section/social_media_section_mobile.dart';
import 'package:portfolio/util/tools_section/tools_section_mobile.dart';
import 'package:portfolio/util/tools_section/tools_section_website.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _toolsKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 1080 || constraints.maxHeight > 1920) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  spacing: 120.0,
                  children: [
                    CustomTopAppbarDesktop(
                      onHomePressed: () => scrollToSection(_homeKey),
                      onProjectsPressed: () => scrollToSection(_projectsKey),
                      onServicesPressed: () => scrollToSection(_toolsKey),
                      onContactPressed: () => scrollToSection(_contactKey),
                    ),
                    Column(
                      key: _homeKey,
                      children: [
                        HomeSectionWebsite(),
                      ],
                    ),
                    Column(
                      key: _toolsKey,
                      children: [
                        ToolsSectionWebsite(),
                      ],
                    ),
                    Text(
                      "Projects",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Column(
                      key: _projectsKey,
                      children: [
                        ProjectSectionDesktop(),
                      ],
                    ),
                    Column(
                      key: _contactKey,
                      children: [
                        ContactUsSectionDesktop(),
                      ],
                    ),
                    SendMailSectionDesktop(),
                    SocialMediaSectionDesktop()
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  spacing: 24.0,
                  children: [
                    CustomTopAppBarMobile(
                      onHomePressed: () => scrollToSection(_homeKey),
                      onProjectsPressed: () => scrollToSection(_projectsKey),
                      onServicesPressed: () => scrollToSection(_toolsKey),
                      onContactPressed: () => scrollToSection(_contactKey),
                    ),
                    Column(
                      key: _homeKey,
                      children: [
                        HomeSectionMobile(),
                      ],
                    ),
                    Column(
                      key: _toolsKey,
                      children: [
                        ToolsSectionMobile(),
                      ],
                    ),
                    Text(
                      "Projects",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Column(
                      key: _projectsKey,
                      children: [
                        ProjectSectionMobile(),
                      ],
                    ),
                    Column(
                      key: _contactKey,
                      children: [
                        ContactUsSectionMobile(),
                      ],
                    ),
                    SendMailSectionMobile(),
                    SocialMediaSectionMobile(),
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
