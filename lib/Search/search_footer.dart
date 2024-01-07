import 'package:flutter/material.dart';
import 'package:google_clone/responsive/colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: footerColor,
      padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
      child: Row(
        children: [
          Text(
            'India',
            style: TextStyle(color: Colors.grey[700], fontSize: 15),
          )
        ],
      ),
    );
  }
}
