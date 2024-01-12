import 'package:flutter/material.dart';
import 'package:flutter_horaios_web/ResponsiveLogic/login_large.dart';
import 'package:flutter_horaios_web/ResponsiveLogic/login_medium.dart';
import 'package:flutter_horaios_web/ResponsiveLogic/login_small.dart';
import 'package:flutter_horaios_web/ResponsiveLogic/responsive.dart';

class LoginController extends StatefulWidget {
  const LoginController({Key? key}) : super(key: key);

  @override
  State<LoginController> createState() => _LoginControllerState();
}

class _LoginControllerState extends State<LoginController> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        smallScreen: LoginSmall(),
        mediumScreen: LoginMedium(),
        largeScreen: LoginLarge(),
      ),
    );
  }
}
