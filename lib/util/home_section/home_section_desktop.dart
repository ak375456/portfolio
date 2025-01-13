import 'package:flutter/material.dart';

class HomeSectionWebsite extends StatelessWidget {
  const HomeSectionWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.amber,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 115.0,
                ),
                child: Column(
                  children: [
                    Text(
                      "I'am \nAftab Fazal",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 64.0,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Picture Section",
              )
            ],
          ),
        ],
      ),
    );
  }
}
