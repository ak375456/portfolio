import 'package:flutter/material.dart';

class ToolsSectionWebsite extends StatelessWidget {
  const ToolsSectionWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Tools",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inter',
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/tool_icons_web/dartweb.png",
                height: 100.0, width: 100.0),
            Image.asset("assets/tool_icons_web/flutterweb.png",
                height: 100.0, width: 100.0),
            Image.asset("assets/tool_icons_web/kotlinweb.png",
                height: 100.0, width: 100.0),
            Image.asset("assets/tool_icons/DeviconJetpackcompose.png",
                height: 100.0, width: 100.0),
            Image.asset("assets/tool_icons_web/firebaseweb.png",
                height: 100.0, width: 100.0),
          ],
        ),
      ],
    );
  }
}
