import 'package:flutter/material.dart';
import 'package:portfolio/util/my_button.dart';

class HomeSectionWebsite extends StatelessWidget {
  const HomeSectionWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I'am \nAftab Fazal",
                  style: TextStyle(
                      fontFamily: 'Inter', fontSize: 64.0, color: Colors.white),
                ),
                Text(
                  "Flutter Developer | Android Developer | Kotlin Developer |\nAPI Integration | Frontend & Backend Android Specialist |\nJetpack Compose | ViewModel | Retrofit | MySQL |\nFirebase (Firestore, Authentication, Storage) |\nDagger Hilt | Clean Architecture (MVVM) | Room Database |\nGit ",
                  style: TextStyle(
                      fontFamily: 'Inter', fontSize: 24.0, color: Colors.white),
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
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    1000,
                  ),
                ),
              ),
              child: Image.asset(
                "assets/aftab.png",
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ],
    );
  }
}
