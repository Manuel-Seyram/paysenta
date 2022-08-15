import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paysenta/ui/shared/constants.dart';

import 'onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  static const String id = "Splash page id";
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  splashTime() {
    Duration duration = const Duration(seconds: 2);
    return Timer(duration, route);
  }

  route() {
    Navigator.popAndPushNamed(context, Onboarding.id);
  }

  @override
  void initState() {
    super.initState();
    splashTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Image.asset(
            "assets/images/logo.webp",
          ),
        ),
      ),
    );
  }
}
