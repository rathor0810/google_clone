import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/responsive/colors.dart';
import 'package:google_clone/mobile/mob_footer.dart';
import 'package:google_clone/responsive/search.dart';
import 'package:google_clone/responsive/search_button.dart';
import 'package:google_clone/responsive/translationButton.dart';
import 'package:google_clone/web/web_footer.dart';

class MobscreenLayout extends StatelessWidget {
  const MobscreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.grey),
        ),
        title: SizedBox(
          width: size.width * .34,
          child: const DefaultTabController(
              length: 2,
              child: TabBar(
                labelColor: blueColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: blueColor,
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Images'),
                ],
              )),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            // color: Colors.white,
            icon: SvgPicture.asset(
              'assets/images/more-apps.svg',
              color: primaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: const Color(0xff1A73EB),
              onPressed: () {},
              child: const Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.24),
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Search(),
                    SizedBox(
                      height: 20,
                    ),
                    SearchButton(),
                    SizedBox(
                      height: 20,
                    ),
                    TranslationButton(),
                  ],
                ),
                MobFooter(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
