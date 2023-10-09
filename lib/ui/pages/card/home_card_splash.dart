import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paysenta/ui/pages/card/select_card.dart';

class CardSplash extends StatelessWidget {
  const CardSplash({super.key});
  static const String id = 'home-card-splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.fill,
                repeat: ImageRepeat.noRepeat)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(90),
              Center(
                child: Image.asset(
                  'assets/card_splash.png',
                  height: 350,
                  width: 350,
                ),
              ),
              const Gap(30),
              const Row(
                children: [
                  Gap(30),
                  Text('Create Your\nPaysenta Card',
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      )),
                ],
              ),
              const Gap(20),
              const Row(
                children: [
                  Gap(30),
                  Text(
                      'The customizable, no hidden fee, instant discount\ndebit or credit card',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: 0.3)),
                ],
              ),
              const Gap(70),
              Center(
                  child: Container(
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      width: 350.0,
                      height: 56.0,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.popAndPushNamed(context, SelectCard.id);
                        },
                        splashColor: Colors.white,
                        child: const Text(
                          'Get Free  Card',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(8, 173, 173, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
