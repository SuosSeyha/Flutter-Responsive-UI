import 'package:flutter/material.dart';
class ResposiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  ResposiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.minWidth<=500){ // mobile
          return mobileScaffold;
        }else if(constraints.minWidth<=1023){ //tablet
          return tabletScaffold;
        }else{ // desktop
          return desktopScaffold;
        }
      },
    );
  }
}