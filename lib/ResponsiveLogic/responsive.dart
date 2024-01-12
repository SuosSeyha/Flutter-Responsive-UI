import 'package:flutter/material.dart';
import 'package:flutter_horaios_web/ResponsiveLogic/layout.dart';

class Responsive extends StatelessWidget {
  final Widget smallScreen;
  final Widget mediumScreen;
  final Widget largeScreen;

  const Responsive({
    Key? key,
    required this.smallScreen,
    required this.mediumScreen,
    required this.largeScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < LAYOUTS.mediumScreen;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= LAYOUTS.mediumScreen &&
        MediaQuery.of(context).size.width < LAYOUTS.largeScreen;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > LAYOUTS.largeScreen;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (isLargeScreen(context)) {
          return largeScreen;
        } else if (isMediumScreen(context)) {
          return mediumScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
