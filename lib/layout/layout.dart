import 'package:flutter/material.dart';
import 'package:pokedex/pages/smartphone/homepage.dart';
import 'package:pokedex/pages/website/homepage.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double deviceWidth = constraints.maxWidth;
      // double deviceHeight = constraints.maxHeight;

      if (deviceWidth >= 1000) {
        return const WebsiteHomePage();
      } else {
        return const SmartphoneHomePage();
      }
    });
  }
}
