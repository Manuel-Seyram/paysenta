import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'send_money.dart';
import 'send_money_bank.dart';

class SelectTransferType extends StatelessWidget {
  const SelectTransferType({super.key});
  static String id = "select transfer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
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
                const Gap(40),
                const Text('Select  Transfer Type',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(8, 173, 173, 1),
                        letterSpacing: 0.3))
              ],
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SendMoney.id);
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 52,
                              backgroundColor: Color.fromRGBO(8, 173, 173, 1),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.white,
                                foregroundImage: AssetImage(
                                    'assets/images/illustrations/mtn.png'),
                              ),
                            ),
                            Gap(15),
                            Center(
                              child: Text('MTN Mobile',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ),
                            Center(
                              child: Text('Money',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SendMoneyBank.id);
                        },
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 52,
                              backgroundColor:
                                  const Color.fromRGBO(8, 173, 173, 1),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                      'assets/images/illustrations/bank-transfer.png', height: 60, width: 60,),
                              ),
                            ),
                            const Gap(15),
                            const Center(
                              child: Text('Bank Direct',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SendMoney.id);
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 52,
                              backgroundColor: Color.fromRGBO(8, 173, 173, 1),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.white,
                                foregroundImage: AssetImage('assets/images/illustrations/vodafone.png'),
                              ),
                            ),
                            Gap(15),
                            Center(
                              child: Text('Vodafone',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ),
                            Center(
                              child: Text('Cash',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SendMoney.id);
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 52,
                              backgroundColor: Color.fromRGBO(8, 173, 173, 1),
                              child: CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.white,
                                foregroundImage: AssetImage(
                                    'assets/images/illustrations/AT.png'),
                              ),
                            ),
                            Gap(15),
                            Center(
                              child: Text('AirtelTigo',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ),
                            Center(
                              child: Text('Money',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
