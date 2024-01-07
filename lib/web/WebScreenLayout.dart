import 'package:flutter/material.dart';
import 'package:google_clone/responsive/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/responsive/search.dart';
import 'package:google_clone/responsive/search_button.dart';
import 'package:google_clone/responsive/translationButton.dart';
import 'package:google_clone/web/web_footer.dart';

class WebscreenLayout extends StatelessWidget {
  const WebscreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Gmail',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Images',
                style:
                    TextStyle(color: primaryColor, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
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
                  WebFooter(),
                ],
              ))
            ],
          ),
        )
        );
  }
}
