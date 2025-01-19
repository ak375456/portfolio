import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.controller,
    required this.maxLines,
    required this.minLines,
    required this.hintText,
  });

  final TextEditingController controller;
  final int maxLines;
  final int minLines;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          hintText,
          style: TextStyle(
            fontSize: 22,
            fontFamily: "Inter",
            color: Colors.white70,
          ),
        ),
        SizedBox(width: 16), // Add spacing between text and text field
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          minLines: minLines,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            fillColor: Colors.white,
            filled: true,
          ),
        ),
      ],
    );
  }
}
