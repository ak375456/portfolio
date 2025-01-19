import 'package:flutter/material.dart';
import 'package:portfolio/util/social_media_section/social_media_section_desktop.dart';

class SocialMediaSectionMobile extends StatelessWidget {
  const SocialMediaSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Contact Me!",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            IconButton(
              onPressed: () {
                launchURL("https://www.linkedin.com/in/aftab-fazal-5b8028286/");
              },
              icon: Image(
                height: 23,
                image: AssetImage("assets/li.png"),
              ),
            ),
            IconButton(
              onPressed: () {
                launchURL("https://www.instagram.com/aftab_fazal375/");
              },
              icon: Image(
                height: 23,
                image: AssetImage("assets/insta.png"),
              ),
            ),
            IconButton(
              onPressed: () {
                launchURL("https://github.com/ak375456");
              },
              icon: Image(
                height: 23,
                image: AssetImage("assets/git.png"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Image(
              height: 23,
              image: AssetImage("assets/g.png"),
            ),
            Image(
              height: 23,
              image: AssetImage("assets/p.png"),
            ),
          ],
        ),
      ],
    );
  }
}
