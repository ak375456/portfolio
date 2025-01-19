import 'package:flutter/material.dart';
import 'package:portfolio/services.dart';
import 'package:portfolio/util/my_button.dart';
import 'package:provider/provider.dart';

class HomeSectionWebsite extends StatelessWidget {
  const HomeSectionWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    final functions = Provider.of<ButtonFunctions>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "I'am",
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 42.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Aftab Fazal",
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
                      onPressed: functions.openGmail,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    CustomButton(
                      text: 'Download My CV',
                      onPressed: functions.downloadCV,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(),
              child: Image.asset(
                "assets/aftab.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
