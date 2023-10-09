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
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.fill,
                repeat: ImageRepeat.noRepeat)),
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
                const Gap(40),
                const Text('Select  Transfer Type',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
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
                              radius: 50,
                            ),
                            Gap(15),
                            Center(
                              child: Text('MTN Mobile',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      letterSpacing: 0.3)),
                            ),
                            Center(
                              child: Text('Money',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      letterSpacing: 0.3)),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SendMoneyBank.id);
                        },
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                            ),
                            Gap(15),
                            Center(
                              child: Text('Bank',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
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
                              radius: 50,
                            ),
                            Gap(15),
                            Center(
                              child: Text('Vodafone',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      letterSpacing: 0.3)),
                            ),
                            Center(
                              child: Text('Cash',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
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
                              radius: 50,
                            ),
                            Gap(15),
                            Center(
                              child: Text('AirtelTigo',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      letterSpacing: 0.3)),
                            ),
                            Center(
                              child: Text('Money',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
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
