import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paysenta/ui/shared/constants.dart';
import '../../utils/countries.dart';
import 'country_residence.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  static const String id = "Register page id";

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Countries allCountries = Countries();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: primaryColor),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(45),
                  Row(
                    children: [
                      const Gap(15),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: const Color(0xFF374151))),
                            child: FittedBox(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40.0),
                                  child: const Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Icon(Icons.arrow_back_ios_new_sharp,
                                        color: Colors.white),
                                  )),
                            )),
                      )
                    ],
                  ),
                  const Gap(20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 70.0,
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Gap(15),
                            FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Create a Paysenta ',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.20,
                                      color: Colors.white),
                                )),
                          ],
                        ),
                        Gap(5),
                        Row(
                          children: [
                            Gap(15),
                            FittedBox(
                              child: Text(
                                'account',
                                style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    letterSpacing: 0.38),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Gap(20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: Column(children: [
                      Row(
                        children: [
                          const Gap(15),
                          Container(
                            decoration: ShapeDecoration(
                                color: const Color(0xFF1D2634),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            width: 350.0,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              style: const TextStyle(
                                  color: Color(0xFF9CA3AF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: 'Full name',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30,
                                  ),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          )
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          const Gap(15),
                          Container(
                            decoration: ShapeDecoration(
                                color: const Color(0xFF1D2634),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            width: 350.0,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(
                                  color: Color(0xFF9CA3AF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30,
                                  ),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          )
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          const Gap(15),
                          Container(
                            decoration: ShapeDecoration(
                                color: const Color(0xFF1D2634),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            width: 350.0,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              style: const TextStyle(
                                  color: Color(0xFF9CA3AF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.30,
                                  ),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                  const Gap(15),
                  SizedBox(
                    child: Row(
                      children: [
                        const Gap(15),
                        Container(
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            width: 350.0,
                            height: 56.0,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, CountryResidence.id);
                              },
                              splashColor: Colors.white,
                              child: const Text(
                                'Sign Up',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1D3A6F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  const Gap(45),
                  SizedBox(
                    child: Row(
                      children: [
                        const Gap(100),
                        Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(3.14),
                          child: Container(
                            width: 80,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Color(0xFF626974),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'OR',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFB6B6B6),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.30,
                          ),
                        ),
                        const Gap(60),
                        Expanded(
                            child: Container(
                          width: 90,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF616873),
                              ),
                            ),
                          ),
                        )),
                        const Gap(60),
                      ],
                    ),
                  ),
                  const Gap(25),
                  SizedBox(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Gap(17),
                            Container(
                              width: 160.0,
                              height: 60.0,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Center(
                                  child: Image.asset(
                                      'assets/images/illustrations/google.png')),
                            ),
                            const Gap(20),
                            Container(
                              width: 160.0,
                              height: 60.0,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Center(
                                  child: Image.asset(
                                      'assets/images/illustrations/apple.png')),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Gap(100),
                  SizedBox(
                    child: Column(
                      children: [
                        Center(
                          child: RichText(
                            text: TextSpan(
                                text: "Already have an account?  ",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Sign In",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.30,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.popAndPushNamed(
                                            context, Login.id);
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
