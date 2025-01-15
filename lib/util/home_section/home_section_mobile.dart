import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:portfolio/util/my_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart'; // For loading assets
import 'dart:io';

class HomeSectionMobile extends StatelessWidget {
  const HomeSectionMobile({super.key});

  Future<void> _downloadCV(BuildContext context) async {
    try {
      final byteData = await rootBundle.load('assets/cv.pdf');

      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/cv.pdf';

      final file = File(filePath);
      await file.writeAsBytes(byteData.buffer.asUint8List());

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('CV downloaded to: $filePath')),
      );
      await OpenFile.open(filePath);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to download CV: $e')),
      );
    }
  }

  void _hireMe() async {
    final emailUri = Uri(
      scheme: 'mailto',
      path: 'ak375456@gmail.com',
      query:
          'subject=Hiring Inquiry&body=Hi, I’d like to discuss an opportunity with you.',
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch email client';
    }
  }

  @override
  Widget build(BuildContext context) {
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
                onPressed: _hireMe,
              ),
              SizedBox(width: 20.0),
              CustomButton(
                text: 'Download My CV',
                onPressed: () => _downloadCV(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
