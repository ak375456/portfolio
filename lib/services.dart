import 'package:flutter/material.dart';
import "package:universal_html/html.dart" as html;
import 'package:url_launcher/url_launcher.dart';

class ButtonFunctions with ChangeNotifier {
  void downloadCV() {
    final url =
        'https://drive.google.com/file/d/1uHaENQOLLRy39ar3pq2onA-auuaFSA8h/view?usp=sharing';
    html.AnchorElement(href: url)
      ..target = '_blank' // Opens the link in a new tab
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

  void openGmailForMobile() async {
    final gmailUrl = Uri.parse(
        'mailto:ak375456@gmail.com?subject=Hiring Inquiry&body=Hi, I’d like to discuss an opportunity with you.');

    if (await canLaunchUrl(gmailUrl)) {
      await launchUrl(gmailUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch Gmail';
    }
  }
}
