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
              buildImageWithOverlay(
                assetPath: "assets/vote.png",
                description:
                    "Votify App: Vote for your candidate in both Minister of National Assembly and Minister of Province Assembly elections. Admin can start elections, verify candidates, and manage voters. Voters can also view the latest news.",
              ),
              buildImageWithOverlay(
                assetPath: "assets/soc.png",
                description:
                    "Social Connect App: A seamless social platform with authentication and clean navigation. Users can create profiles, post content, interact with others' posts, and view profiles.",
              ),
              buildImageWithOverlay(
                assetPath: "assets/bud.png",
                description:
                    "BuddyShuffle App: A social media app where you can add, block, and chat with friends. Features include robust authentication, friend requests, and private messaging.",
              ),
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
