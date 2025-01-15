import 'package:flutter/material.dart';
import "package:universal_html/html.dart" as html;
import 'package:url_launcher/url_launcher.dart';

class ButtonFunctions with ChangeNotifier {
  void downloadCV() {
    final url = 'assets/cv.pdf';
    html.AnchorElement(href: url)
      ..target = 'blank'
      ..download = 'cv.pdf'
      ..click();
  }

  void openGmail() async {
    final gmailUrl = Uri.parse(
        'https://mail.google.com/mail/?view=cm&fs=1&to=ak375456@gmail.com&su=Hiring Inquiry&body=Hi, I’d like to discuss an opportunity with you.');

    if (await canLaunchUrl(gmailUrl)) {
      await launchUrl(gmailUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch Gmail';
    }
  }
}
