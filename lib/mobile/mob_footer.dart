import 'package:flutter/material.dart';
import 'package:google_clone/responsive/footer_text.dart';

class MobFooter extends StatelessWidget {
  const MobFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        FooterText(title: 'About'),
        SizedBox(width: 10),
        FooterText(title: 'Advertising'),
        SizedBox(width: 10),
        FooterText(title: 'Business'),
        SizedBox(width: 10),
        FooterText(title: 'How search works'),
        SizedBox(width: 10),
        FooterText(title: 'Privacy'),
        SizedBox(width: 10),
        FooterText(title: 'Terms'),
        SizedBox(width: 10),
        FooterText(title: 'Settings'),
        SizedBox(width: 10),
      ],
    );
  }
}
