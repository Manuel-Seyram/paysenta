import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import 'card_1.dart';
import 'card_2.dart';
import 'card_3.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({super.key});
  static const String id = 'Select card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(65),
              Row(
                children: [
                  const Gap(30),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color.fromRGBO(8, 173, 173, 1),
                            )),
                        child: FittedBox(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.arrow_back_ios_new_sharp,
                                  color: Color.fromRGBO(8, 173, 173, 1),
                                ),
                              )),
                        )),
                  ),
                  const Gap(50),
                  const Text('Choose your style',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(8, 173, 173, 1),
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ZoomTapAnimation(
                    beginCurve: Curves.decelerate,
                    endCurve: Curves.fastOutSlowIn,
                    beginDuration: const Duration(milliseconds: 120),
                    endDuration: const Duration(milliseconds: 500),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AddCard2.id);
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black26),
                        child: Column(
                          children: [
                            const Gap(20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Paysenta',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          letterSpacing: 0.3)),
                                  Image.asset(
                                    'assets/Card_chips.png',
                                    height: 35,
                                    width: 35,
                                  )
                                ],
                              ),
                            ),
                            const Gap(30),
                            const Row(
                              children: [
                                Gap(20),
                                Text('xxxx xxxx xxxx 2345',
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                            const Gap(10),
                            const Row(
                              children: [
                                Gap(20),
                                Text('Exp. Date 10/28',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                            const Gap(10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Kwame Nimo',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          letterSpacing: 0.3)),
                                  Image.asset(
                                    'assets/mastercard.png',
                                    width: 45,
                                    height: 25,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ZoomTapAnimation(
                    beginCurve: Curves.decelerate,
                    endCurve: Curves.fastOutSlowIn,
                    beginDuration: const Duration(milliseconds: 120),
                    endDuration: const Duration(milliseconds: 500),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AddCard1.id);
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(8, 173, 173, 1)),
                        child: Column(
                          children: [
                            const Gap(20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Paysenta',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          letterSpacing: 0.3)),
                                  Image.asset(
                                    'assets/Card_chips.png',
                                    height: 35,
                                    width: 35,
                                  )
                                ],
                              ),
                            ),
                            const Gap(30),
                            const Row(
                              children: [
                                Gap(20),
                                Text('xxxx xxxx xxxx 2345',
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                            const Gap(10),
                            const Row(
                              children: [
                                Gap(20),
                                Text('Exp. Date 10/28',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                            const Gap(10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Kwame Nimo',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          letterSpacing: 0.3)),
                                  Image.asset(
                                    'assets/mastercard.png',
                                    width: 45,
                                    height: 25,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ZoomTapAnimation(
                    beginCurve: Curves.decelerate,
                    endCurve: Curves.fastOutSlowIn,
                    beginDuration: const Duration(milliseconds: 120),
                    endDuration: const Duration(milliseconds: 500),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AddCard3.id);
                      },
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black54),
                        child: Column(
                          children: [
                            const Gap(20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Paysenta',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          letterSpacing: 0.3)),
                                  Image.asset(
                                    'assets/Card_chips.png',
                                    height: 35,
                                    width: 35,
                                  )
                                ],
                              ),
                            ),
                            const Gap(30),
                            const Row(
                              children: [
                                Gap(20),
                                Text('xxxx xxxx xxxx 2345',
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                            const Gap(10),
                            const Row(
                              children: [
                                Gap(20),
                                Text('Exp. Date 10/28',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        letterSpacing: 0.3)),
                              ],
                            ),
                            const Gap(10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Kwame Nimo',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                          letterSpacing: 0.3)),
                                  Image.asset(
                                    'assets/mastercard.png',
                                    width: 45,
                                    height: 25,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
