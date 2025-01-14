import 'package:flutter/material.dart';

class ToolsSectionMobile extends StatelessWidget {
  const ToolsSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset("assets/tool_icons/dark.png", height: 40.0, width: 40.0),
        Image.asset("assets/tool_icons/flutter.png", height: 40.0, width: 40.0),
        Image.asset("assets/tool_icons/kotlin.png", height: 40.0, width: 40.0),
        Image.asset("assets/tool_icons/DeviconJetpackcompose.png",
            height: 40.0, width: 40.0),
        Image.asset("assets/tool_icons/firebase.png",
            height: 40.0, width: 40.0),
      ],
    );
  }
}
