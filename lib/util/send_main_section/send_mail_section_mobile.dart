import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/util/custom_textfield.dart';
import 'package:portfolio/util/my_button.dart';

class SendMailSectionMobile extends StatefulWidget {
  const SendMailSectionMobile({super.key});

  @override
  State<SendMailSectionMobile> createState() => _SendMailSectionMobileState();
}

class _SendMailSectionMobileState extends State<SendMailSectionMobile> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController messageController;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    messageController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  Future<void> _showEmailOptionsDialog() async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Choose Email Option"),
          content: const Text("How would you like to send the email?"),
          actions: [
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
                _sendEmailApp();
              },
              text: "Open Email App",
            ),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
                _openGmailWebsite();
              },
              text: "Open Gmail Website",
            ),
          ],
        );
      },
    );
  }

  Future<void> _sendEmailApp() async {
    final mailtoLink = Mailto(
      to: ['ak375456@gmail.com'],
      subject: 'New Message from Portfolio',
      body: '''
Name: ${nameController.text}
Email: ${emailController.text}
Message: ${messageController.text}
      ''',
    );

    final mailtoUrl = mailtoLink.toString();
    if (await canLaunchUrl(Uri.parse(mailtoUrl))) {
      await launchUrl(Uri.parse(mailtoUrl));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not open email app.')),
      );
    }
  }

  Future<void> _openGmailWebsite() async {
    final gmailUrl =
        'https://mail.google.com/mail/?view=cm&fs=1&to=ak375456@gmail.com&su=New%20Message%20from%20Portfolio&body=Name:%20${Uri.encodeComponent(nameController.text)}%0AEmail:%20${Uri.encodeComponent(emailController.text)}%0AMessage:%20${Uri.encodeComponent(messageController.text)}';
    if (await canLaunchUrl(Uri.parse(gmailUrl))) {
      await launchUrl(Uri.parse(gmailUrl),
          mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not open Gmail website.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 300,
            child: CustomTextfield(
              controller: nameController,
              maxLines: 1,
              minLines: 1,
              hintText: "Name",
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 300,
            child: CustomTextfield(
              controller: emailController,
              maxLines: 1,
              minLines: 1,
              hintText: "Email",
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 300,
            child: CustomTextfield(
              controller: messageController,
              maxLines: 8,
              minLines: 3,
              hintText: "Message",
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          CustomButton(
            text: "Submit",
            onPressed: () {
              if (nameController.text.isNotEmpty &&
                  emailController.text.isNotEmpty &&
                  messageController.text.isNotEmpty) {
                _showEmailOptionsDialog();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Please fill in all fields.')),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
