import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utils/countries.dart';
import '../navigator/bottom_navigator_bar.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const String id = "login page id";
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Countries allCountries = Countries();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(65),
                  const Gap(20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 60.0,
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Gap(30),
                            FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Hi There! 👋, ',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.20,
                                      color: Colors.black),
                                )),
                          ],
                        ),
                        Gap(5),
                        Row(
                          children: [
                            Gap(30),
                            FittedBox(
                              child: Text(
                                'Welcome back, Sign in to your account',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    letterSpacing: 0.38),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(30),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                              border: Border.all(color: const Color.fromRGBO(8, 173, 173, 1),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          width: 350.0,
                          height: 56.0,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.30),
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30,
                                ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                      const Gap(20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                              border: Border.all(color: const Color.fromRGBO(8, 173, 173, 1),
                              ),
                              borderRadius: BorderRadius.circular(10.0)),
                          width: 350.0,
                          height: 56.0,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.30),
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30,
                                ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 24.0,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        const Gap(30),
                        FittedBox(
                          child: GestureDetector(
                            onTap: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  letterSpacing: 0.38),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(25),
                  SizedBox(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                        decoration: ShapeDecoration(
                            color: const Color.fromRGBO(8, 173, 173, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                        width: 350.0,
                        height: 56.0,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MainPageNavigator.id);
                          },
                          splashColor: const Color.fromRGBO(8, 173, 173, 1),
                          child: const Text(
                            'Sign In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.30,
                            ),
                          ),
                        )),
                  )),
                  const Gap(35),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Divider(
                          thickness: 1.5,
                          endIndent: 30,
                          indent: 30,
                          color: Colors.black,
                        ),
                        Text(
                          'OR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.30,
                          ),
                        ),
                        Divider(
                          thickness: 1.5,
                          endIndent: 30,
                          indent: 30,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const Gap(15),
                  SizedBox(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 160.0,
                                height: 60.0,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(color: const Color.fromRGBO(8, 173, 173, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Center(
                                    child: Image.asset(
                                        'assets/images/illustrations/google.png')),
                              ),
                              Container(
                                width: 160.0,
                                height: 60.0,
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(color: const Color.fromRGBO(8, 173, 173, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Center(
                                    child: Image.asset(
                                        'assets/images/illustrations/apple.png', height: 60, width: 60,)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(180),
                  SizedBox(
                    child: Column(
                      children: [
                        Center(
                          child: RichText(
                            text: TextSpan(
                                text: "Dont have an account?  ",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Sign Up",
                                    style: const TextStyle(
                                      color:  Color.fromRGBO(8, 173, 173, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.30,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.popAndPushNamed(
                                            context, Register.id);
                                      },
                                  )
                                ]),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
