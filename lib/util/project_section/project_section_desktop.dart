import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSectionDesktop extends StatelessWidget {
  const ProjectSectionDesktop({super.key});

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

Widget buildImageContainer(String assetPath) {
  return HoverableImageContainer(assetPath: assetPath);
}

class HoverableImageContainer extends StatefulWidget {
  final String assetPath;

  const HoverableImageContainer({super.key, required this.assetPath});

  @override
  _HoverableImageContainerState createState() =>
      _HoverableImageContainerState();
}

class _HoverableImageContainerState extends State<HoverableImageContainer> {
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
        child: AnimatedScale(
          scale: _isHovered ? 1.1 : 1.0, // Zoom scale
          duration: Duration(milliseconds: 300), // Smooth animation
          curve: Curves.easeInOut,
          child: Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage(widget.assetPath),
                fit: BoxFit.cover,
              ),
              boxShadow: _isHovered
                  ? [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.3),
                        blurRadius: 12.0,
                        offset: Offset(0, 6),
                      )
                    ]
                  : [],
            ),
          ),
        ),
      ),
    );
  }
}
