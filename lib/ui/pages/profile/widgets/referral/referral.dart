import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Referral extends StatelessWidget {
  const Referral({super.key});
  static const String id = "referral";

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
                            border: Border.all(color: Colors.white)),
                        child: FittedBox(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(Icons.arrow_back_ios_new_sharp,
                                    color: Colors.white),
                              )),
                        )),
                  ),
                ],
              ),
              const Gap(20),
              Center(
                child: Image.asset(
                  'assets/referral.png',
                  height: 250,
                  width: 250,
                ),
              ),
              const Gap(40),
              const Center(
                child: Text('Here’s ₵15 free on us!',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 0.3)),
              ),
              const Gap(10),
              const Center(
                child: Text('Share you referral link and earn ₵15',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        letterSpacing: 0.3)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            Icons.copy,
                            color: Color.fromRGBO(8, 173, 173, 1),
                          ),
                        ),
                        const Text('FGX4456R',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(8, 173, 173, 1),
                                letterSpacing: 0.3)),
                        const Text('Share',
                            style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(8, 173, 173, 1),
                                letterSpacing: 0.3)),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
                color: Colors.white,
              ),
              const Gap(60),
              const Center(
                child: Text('Get ₵2 free',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 0.3)),
              ),
              const Gap(10),
              const Center(
                child: Text('For any account you connects',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        letterSpacing: 0.3)),
              ),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
