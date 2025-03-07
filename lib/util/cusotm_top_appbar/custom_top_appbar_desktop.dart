import 'package:flutter/material.dart';

class CustomTopAppbarDesktop extends StatelessWidget {
  final VoidCallback onHomePressed;
  final VoidCallback onProjectsPressed;
  final VoidCallback onServicesPressed;

  const CustomTopAppbarDesktop({
    super.key,
    required this.onHomePressed,
    required this.onProjectsPressed,
    required this.onServicesPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 44, 44, 44),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110.0),
            child: Text(
              "Portfolio",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 65.0),
            child: Row(
              children: <Widget>[
                TextButton(
                  onPressed: onHomePressed,
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: onServicesPressed,
                  child: Text(
                    "tools",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: onProjectsPressed,
                  child: Text(
                    "Projects",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
