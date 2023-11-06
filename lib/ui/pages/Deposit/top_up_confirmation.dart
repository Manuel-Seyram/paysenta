import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../navigator/bottom_navigator_bar.dart';

class TopUpConfirmation extends StatelessWidget {
  const TopUpConfirmation({super.key});
  static String id = "TopUpConfirmation";

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
              const Gap(60),
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
                  const Gap(70),
                  const Text('Confirmation',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(8, 173, 173, 1),
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(50),
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
                            color: Colors.black54),
                        child: Column(
                          children: [
                            const Gap(20),
                            Row(
                              children: [
                                const Gap(20),
                                const Text('Paysenta',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        letterSpacing: 0.3)),
                                const Gap(190),
                                Image.asset(
                                  'assets/Card_chips.png',
                                  height: 35,
                                  width: 35,
                                )
                              ],
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
                            const Gap(30),
                            const Gap(10),
                            Row(
                              children: [
                                const Gap(20),
                                const Text('Kwame Nimo',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        letterSpacing: 0.3)),
                                const Gap(160),
                                Image.asset(
                                  'assets/mastercard.png',
                                  width: 45,
                                  height: 25,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Top up balance',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                    Text('Ghs 1,924.00',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                  ],
                ),
              ),
              const Gap(30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Fee',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                    Text('Ghs 2.00',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                  ],
                ),
              ),
              const Gap(30),
              const Divider(
                indent: 30,
                endIndent: 30,
                thickness: 1.0,
                color: Colors.black,
              ),
              const Gap(30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                    Text('Ghs 1,926.00',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                  ],
                ),
              ),
              const Gap(150),
              Center(
                  child: GestureDetector(
                onTap: () {
                  _bottomsheet(context);
                },
                child: Container(
                  decoration: ShapeDecoration(
                      color: const Color.fromRGBO(8, 173, 173, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  width: 350.0,
                  height: 56.0,
                  child: const Padding(
                    padding: EdgeInsets.all(17.0),
                    child: Text(
                      'Confirm Top Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

void _bottomsheet(BuildContext context) {
  showModalBottomSheet(
    showDragHandle: true,
    backgroundColor: const Color.fromRGBO(8, 173, 173, 1),
    useSafeArea: true,
    anchorPoint: const Offset(0.0, 5.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    isScrollControlled: true,
    context: context,
    builder: (context) => Container(
      height: 550.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(8, 173, 173, 1),
        //border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Column(
        children: [
          const Gap(40),
          Image.asset(
            'assets/topup_success.png',
            height: 200,
            width: 200,
          ),
          const Gap(30),
          const Center(
            child: Text(
              'Top Up Success',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.20,
              ),
            ),
          ),
          const Gap(10),
          const Center(
            child: Text(
              'Top up are reviewed which may result in delays',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.30,
              ),
            ),
          ),
          const Center(
            child: Text(
              'or funds being frozen',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.30,
              ),
            ),
          ),
          const Gap(100),
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
                  Navigator.pushNamed(context, MainPageNavigator.id);
                },
                splashColor: Colors.white,
                child: const Text(
                  'Back to Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(8, 173, 173, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.30,
                  ),
                ),
              )),
        ],
      ),
    ),
  );
}
