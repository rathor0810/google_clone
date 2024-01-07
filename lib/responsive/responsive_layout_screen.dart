import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  final Widget MobScreenLayout;
  final Widget WebScreenLayout;

  const ResponsiveLayoutScreen(
      {super.key, required this.MobScreenLayout, required this.WebScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth <= 768) {
        return MobScreenLayout;
      } else {
        return WebScreenLayout;
      }
    });
  }
}
