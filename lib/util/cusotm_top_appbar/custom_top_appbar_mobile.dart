import 'package:flutter/material.dart';

class CustomTopAppBarMobile extends StatelessWidget {
  const CustomTopAppBarMobile({super.key});

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
                child: Text(
                  'Home',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: 'projects',
                child: Text(
                  'Projects',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: 'services',
                child: Text(
                  'Services',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              PopupMenuItem(
                value: 'contact',
                child: Text(
                  'Contact',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
            onSelected: (value) {
              switch (value) {
                case 'home':
                  break;
                case 'projects':
                  break;
                case 'services':
                  break;
                case 'contact':
                  break;
              }
            },
          ),
        ],
      ),
    );
  }
}
