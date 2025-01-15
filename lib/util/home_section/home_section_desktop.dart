import 'package:flutter/material.dart';
import 'package:portfolio/util/my_button.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:url_launcher/url_launcher.dart';

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
                  "I'am\nAftab Fazal",
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
                      onPressed: _openGmail,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    CustomButton(
                      text: 'Download My CV',
                      onPressed: _downloadCV,
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

  void _downloadCV() {
    final url = 'assets/cv.pdf';
    html.AnchorElement(href: url)
      ..target = 'blank'
      ..download = 'cv.pdf'
      ..click();
  }

  // void _sendEmail() async {
  //   final emailUri = Uri(
  //     scheme: 'mailto',
  //     path: 'ak375456@gmail.com',
  //     query:
  //         'subject=Hiring Inquiry&body=Hi, I’d like to discuss an opportunity with you.',
  //   );

  //   if (await canLaunchUrl(emailUri)) {
  //     await launchUrl(emailUri);
  //   } else {
  //     throw 'Could not launch email client';
  //   }
  // }

  void _openGmail() async {
    final gmailUrl = Uri.parse(
        'https://mail.google.com/mail/?view=cm&fs=1&to=ak375456@gmail.com&su=Hiring Inquiry&body=Hi, I’d like to discuss an opportunity with you.');

    if (await canLaunchUrl(gmailUrl)) {
      await launchUrl(gmailUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch Gmail';
    }
  }
}
