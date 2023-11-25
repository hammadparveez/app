import 'package:fasion/screens/home/components/about_me.dart';
import 'package:fasion/utils/colors.dart';
import 'package:fasion/utils/styles.dart';
import 'package:flutter/material.dart';

class ContactFormSection extends StatelessWidget {
  const ContactFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: DefaultTextStyle(
        style: AppTextStyles.heading3.copyWith(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeadingWithHztDivider(heading: 'Contact Me'),
            const SizedBox(height: 50),
            const Text('Full Name'),
            const ContactFormTextfield(
              title: 'Full Name',
              hintTitle: 'Enter your full name',
            ),
            const Text('Email'),
            const ContactFormTextfield(
              title: 'Email',
              hintTitle: 'Enter your email address',
            ),
            const Text('Message'),
            const ContactFormTextfield(
              title: 'Message',
              hintTitle: 'Enter your message here',
              textFieldHeight: 200,
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.heading1,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: const Text('Send'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactFormTextfield extends StatelessWidget {
  const ContactFormTextfield({
    super.key,
    this.controller,
    this.textFieldHeight,
    required this.hintTitle,
    required this.title,
  });
  final TextEditingController? controller;
  final String title;
  final String hintTitle;
  final double? textFieldHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6),
      child: SizedBox(
        height: textFieldHeight ?? 40,
        child: TextField(
          controller: controller,
          style: const TextStyle(fontSize: 12),
          maxLength: null,
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Enter your full name',
            hintStyle:
                const TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 0)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(width: 0)),
          ),
        ),
      ),
    );
  }
}
