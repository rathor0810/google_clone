import 'package:flutter/material.dart';
import 'package:google_clone/Search/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SearchTab(
            text: 'All',
            icon: Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'Images',
            icon: Icons.image,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'Map',
            icon: Icons.map,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'Shopping',
            icon: Icons.shop,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            text: 'News',
            icon: Icons.article,
          ),
          SizedBox(
            width: 20,
          ),
          SearchTab(
            isActive: true,
            text: 'More',
            icon: Icons.more_vert,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
