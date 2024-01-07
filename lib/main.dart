import 'package:flutter/material.dart';
import 'package:google_clone/mobile/MobScreenLayout.dart';
import 'package:google_clone/web/WebScreenLayout.dart';
import 'package:google_clone/responsive/colors.dart';
import 'package:google_clone/responsive/responsive_layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayoutScreen(
        MobScreenLayout: MobscreenLayout(),
        WebScreenLayout: WebscreenLayout(),
      ),
    );
  }
}
