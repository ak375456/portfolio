import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/util/project_section/project_section_desktop.dart';

class ProjectSectionMobile extends StatelessWidget {
  const ProjectSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0),
          CarouselSlider(
            items: [
              buildImageContainer("assets/vote.png"),
              buildImageContainer("assets/soc.png"),
              buildImageContainer("assets/bud.png"),
            ],
            options: CarouselOptions(
              height: 500.0,
              enlargeCenterPage: true,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
