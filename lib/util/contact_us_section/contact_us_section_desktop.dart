import 'package:flutter/material.dart';

class ContactUsSectionDesktop extends StatelessWidget {
  const ContactUsSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Contact Us!",
          style: TextStyle(
              fontSize: 40.0,
              fontFamily: "Inter",
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          "I would love to hear from you!",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w500,
            fontFamily: "Inter",
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
