import 'package:flutter/material.dart';

class CustomTopAppBarMobile extends StatelessWidget {
  final VoidCallback onHomePressed;
  final VoidCallback onProjectsPressed;
  final VoidCallback onServicesPressed;
  final VoidCallback onContactPressed;

  const CustomTopAppBarMobile({
    Key? key,
    required this.onHomePressed,
    required this.onProjectsPressed,
    required this.onServicesPressed,
    required this.onContactPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 44, 44, 44),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Portfolio",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),

          // Burger Menu
          PopupMenuButton<String>(
            icon: Image.asset(
              'assets/jam_menu.png',
            ),
            color: const Color.fromARGB(255, 44, 44, 44),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'home',
                child: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: 'projects',
                child: const Text(
                  'Tools',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: 'services',
                child: const Text(
                  'Projects',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: 'contact',
                child: const Text(
                  'Contact Us',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 'home':
                  onHomePressed();
                  break;
                case 'projects':
                  onServicesPressed();
                  break;
                case 'services':
                  onProjectsPressed();
                  break;
                case 'contact':
                  onContactPressed();
                  break;
              }
            },
          ),
        ],
      ),
    );
  }
}
