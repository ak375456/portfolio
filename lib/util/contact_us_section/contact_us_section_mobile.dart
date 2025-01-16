import 'package:flutter/material.dart';

class ContactUsSectionMobile extends StatelessWidget {
  const ContactUsSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Contact Us!",
          style: TextStyle(
              fontSize: 24.0,
              fontFamily: "Inter",
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "I would love to hear from you!",
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
            fontFamily: "Inter",
            color: Colors.white,
          ),
        ),
      ],
    );
    ;
  }
}
