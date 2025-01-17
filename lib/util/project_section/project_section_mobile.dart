import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

Widget buildImageWithOverlay({
  required String assetPath,
  required String description,
}) {
  return HoverableImageWithOverlay(
    assetPath: assetPath,
    description: description,
  );
}

class HoverableImageWithOverlay extends StatefulWidget {
  final String assetPath;
  final String description;

  const HoverableImageWithOverlay({
    Key? key,
    required this.assetPath,
    required this.description,
  }) : super(key: key);

  @override
  _HoverableImageWithOverlayState createState() =>
      _HoverableImageWithOverlayState();
}

class _HoverableImageWithOverlayState extends State<HoverableImageWithOverlay> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          const githubUrl = "https://github.com/ak375456";
          if (await canLaunchUrl(Uri.parse(githubUrl))) {
            await launchUrl(Uri.parse(githubUrl),
                mode: LaunchMode.externalApplication);
          } else {
            throw 'Could not launch $githubUrl';
          }
        },
        child: Stack(
          children: [
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(widget.assetPath),
                  fit: BoxFit.cover,
                ),
              ),
              foregroundDecoration: BoxDecoration(
                color: _isHovered
                    ? Colors.black.withOpacity(0.7)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(12.0),
              ),
              height: 500,
              width: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  widget.description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 8.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 122, 122, 122),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
