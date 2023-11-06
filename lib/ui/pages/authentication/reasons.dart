import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'proof_residence.dart';

class Reasons extends StatefulWidget {
  const Reasons({super.key});
  static const String id = "reasons page id";

  @override
  State<Reasons> createState() => _ReasonsState();
}

class _ReasonsState extends State<Reasons> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    String? countryValue = arguments?['countryValue'] as String?;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(8, 173, 173, 1),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(55),
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
                  )
                ],
              ),
              const Gap(20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 120.0,
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Gap(15),
                        FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Main Reason For using\nPaysenta',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.20,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                    Gap(7),
                    Row(
                      children: [
                        Gap(15),
                        FittedBox(
                          child: Text(
                            'We need to know this for regulatory reasons,',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                letterSpacing: 0.38),
                          ),
                        ),
                      ],
                    ),
                    Gap(5),
                    Row(
                      children: [
                        Gap(15),
                        FittedBox(
                          child: Text(
                            'And also we’re curious!',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                letterSpacing: 0.38),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(30),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Gap(15),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Image.asset(
                                      'assets/tabler-chart-pie.png'),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Spend or',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Color.fromRGBO(8, 173, 173, 1)),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'save daily',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Color.fromRGBO(8, 173, 173, 1)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Gap(15),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Image.asset('assets/tabler-bolt.png'),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Speed up',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'transactions',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Gap(15),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Image.asset('assets/tabler-users.png'),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Payments',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'to friends',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Gap(15),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Image.asset(
                                      'assets/tabler-credit-card.png'),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Online',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Color.fromRGBO(8, 173, 173, 1)),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'payments',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Color.fromRGBO(8, 173, 173, 1)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Gap(15),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Image.asset('assets/tabler-beach.png'),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Spend while',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'travelling',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          const Gap(15),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: SizedBox(
                                  child: Image.asset(
                                      'assets/tabler-businessplan.png'),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'Your financial',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  'assets',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(50),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
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
                            Navigator.pushNamed(
                              context,
                              ProofRecidency.id,
                              arguments: {'countryValue': countryValue},
                            );
                          },
                          splashColor: Colors.white,
                          child: const Text(
                            'Continue',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(8, 173, 173, 1),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.30,
                            ),
                          ),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
