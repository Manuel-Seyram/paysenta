import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../card/select_card.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});
  static String id = "MyCards";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(60),
              const Center(
                child: Text('My Cards',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(8, 173, 173, 1),
                        letterSpacing: 0.3)),
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
                      onTap: () {},
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
                      onTap: () {},
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
              const Gap(30),
              Center(
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
                          Navigator.popAndPushNamed(context, SelectCard.id);
                        },
                        splashColor: const Color.fromRGBO(8, 173, 173, 1),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 25,
                            ),
                            Gap(10),
                            Text(
                              'Add  Card',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
