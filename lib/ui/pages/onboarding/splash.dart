import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      backgroundColor: const Color.fromRGBO(8, 173, 173, 1),
      body: Column(
        children: [
          const Gap(100),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
          ),
          const Gap(20),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: Image.asset(
                "assets/images/logopay.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
