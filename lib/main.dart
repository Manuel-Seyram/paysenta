import 'package:flutter/material.dart';
import 'package:paysenta/ui/pages/authentication/login.dart';
import 'package:paysenta/ui/pages/authentication/register.dart';
import 'package:paysenta/ui/pages/authentication/verify_otp.dart';
import 'package:paysenta/ui/pages/navigator/bottom_navigator_bar.dart';
import 'package:paysenta/ui/pages/onboarding/get_started.dart';
import 'package:paysenta/ui/pages/onboarding/onboarding.dart';
import 'package:paysenta/ui/pages/onboarding/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
      routes: {
        Splash.id: (context) => const Splash(),
        Onboarding.id: (context) => const Onboarding(),
        GetStarted.id: (context) => const GetStarted(),
        Login.id: (context) => const Login(),
        Register.id: (context) => const Register(),
        VerifyOTP.id: (context) => const VerifyOTP(),
        MainPageNavigator.id: (context) => const MainPageNavigator(),
      },
    );
  }
}
