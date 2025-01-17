import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaSectionDesktop extends StatelessWidget {
  const SocialMediaSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 120,
          children: [
            IconButton(
              onPressed: () {
                launchURL("https://www.linkedin.com/in/aftab-fazal-5b8028286/");
              },
              icon: Image(
                image: AssetImage("assets/li.png"),
              ),
            ),
            IconButton(
              onPressed: () {
                launchURL("https://www.instagram.com/aftab_fazal375/");
              },
              icon: Image(
                image: AssetImage("assets/insta.png"),
              ),
            ),
            IconButton(
              onPressed: () {
                launchURL("https://github.com/ak375456");
              },
              icon: Image(
                image: AssetImage("assets/git.png"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 70,
          children: [
            Image(
              image: AssetImage("assets/g.png"),
            ),
            Image(
              image: AssetImage("assets/p.png"),
            ),
          ],
        ),
      ],
    );
  }
}

Future<void> launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
