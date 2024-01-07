import 'package:flutter/material.dart';
import 'package:google_clone/responsive/colors.dart';

class SearchTab extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isActive;
  const SearchTab(
      {super.key,
      required this.icon,
      this.isActive = false,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18,
              color: isActive ? blueColor! : Colors.grey,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: isActive! ? blueColor : Colors.grey,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 7,
        ),
        isActive
            ? Container(
                height: 3,
                width: 4,
                color: blueColor,
              )
            : Container()
      ],
    );
  }
}
