import 'package:flutter/material.dart';
import 'package:google_clone/responsive/search_buttons.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchButtons(
              title: 'google Search',
            ),
            SizedBox(
              width: 10,
            ),
            SearchButtons(
              title: 'I\'am feeling Lucky',
            )
          ],
        )
      ],
    );
  }
}
