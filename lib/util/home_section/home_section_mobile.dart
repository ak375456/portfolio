import 'package:flutter/material.dart';
import 'package:portfolio/util/my_button.dart';

class HomeSectionMobile extends StatelessWidget {
  const HomeSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "I'am\nAftab Fazal",
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 42.0, color: Colors.white),
          ),
          SizedBox(height: 10.0),
          Text(
            "Flutter Developer | Android Developer |\nKotlin Developer |API Integration |\nFrontend & Backend Android Specialist |\nJetpack Compose | ViewModel | Retrofit |\nFirebase (Firestore, Authentication, Storage) |\nDagger Hilt | Clean Architecture (MVVM) | Room Database | MySQL | Git ",
            style: TextStyle(
                fontFamily: 'Inter', fontSize: 16.0, color: Colors.white),
          ),
          SizedBox(height: 18.0),
          Row(
            children: [
              CustomButton(
                text: 'Hire Me',
                onPressed: () {},
              ),
              SizedBox(
                width: 20.0,
              ),
              CustomButton(
                text: 'Download My CV',
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
