import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/services.dart';
import 'package:portfolio/util/my_button.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;

class HomeSectionMobile extends StatelessWidget {
  const HomeSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final functions = Provider.of<ButtonFunctions>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "I'am\nAftab Fazal",
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 42.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Flutter Developer | Android Developer |\nKotlin Developer | API Integration |\nFrontend & Backend Android Specialist |\nJetpack Compose | ViewModel | Retrofit |\nFirebase (Firestore, Authentication, Storage) |\nDagger Hilt | Clean Architecture (MVVM) | Room Database | MySQL | Git ",
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16.0,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 18.0),
          Row(
            children: [
              CustomButton(
                text: 'Hire Me',
                onPressed: _openGmail,
              ),
              SizedBox(width: 20.0),
              CustomButton(
                text: 'Download My CV',
                onPressed: () {
                  if (kIsWeb) {
                    functions.downloadCV();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Open Gmail method
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
