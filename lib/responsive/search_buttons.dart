import 'package:flutter/material.dart';
import 'package:google_clone/responsive/colors.dart';

class SearchButtons extends StatelessWidget {
  final String title;
  const SearchButtons({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      padding: const EdgeInsetsDirectional.symmetric(
        horizontal: 25,
        vertical: 18,
      ),
      elevation: 0,
      color: searchColor,
      child: Text(title),
    );
  }
}
