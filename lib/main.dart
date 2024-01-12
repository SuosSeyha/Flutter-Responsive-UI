import 'package:flutter/material.dart';
import 'package:flutter_horaios_web/view/desktop_scaffold.dart';
import 'package:flutter_horaios_web/view/layout_resposive.dart';
import 'package:flutter_horaios_web/view/mobile_scaffold.dart';
import 'package:flutter_horaios_web/view/tablet_scaffold.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ResposiveLayout(
        mobileScaffold: const MobileScaffold(),
        tabletScaffold: const TabletScaffold(),
        desktopScaffold: const DesktopScaffold(),
      )
    );
  }
}
