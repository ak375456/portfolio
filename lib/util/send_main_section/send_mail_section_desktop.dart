import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:portfolio/util/custom_textfield.dart';
import 'package:portfolio/util/my_button.dart';

class SendMailSectionDesktop extends StatefulWidget {
  const SendMailSectionDesktop({super.key});

  @override
  State<SendMailSectionDesktop> createState() => _SendMailSectionDesktopState();
}

class _SendMailSectionDesktopState extends State<SendMailSectionDesktop> {
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 400,
            child: CustomTextfield(
              controller: nameController,
              maxLines: 1,
              minLines: 1,
              hintText: "Name",
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 400,
            child: CustomTextfield(
              controller: emailController,
              maxLines: 1,
              minLines: 1,
              hintText: "Email",
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 400,
            child: CustomTextfield(
              controller: messageController,
              maxLines: 8,
              minLines: 3,
              hintText: "Message",
            ),
          ),
          SizedBox(
            height: 45,
          ),
          CustomButton(
            text: "Submit",
            onPressed: () {
              log(nameController.text);
            },
          ),
        ],
      ),
    );
  }
}
