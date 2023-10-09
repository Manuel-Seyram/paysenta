import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'widget/clip_shadow_path.dart';
import 'widget/clipper.dart';
import 'widget/money_sent_splash.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});
  static String id = "Send money";
  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
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
                  const Gap(80),
                  const Text('Send Money',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(20),
              const SizedBox(
                child: Center(
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Color.fromRGBO(29, 171, 135, 1),
                    child: CircleAvatar(
                      radius: 73,
                      backgroundColor: Color.fromRGBO(8, 173, 173, 0.4),
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Color.fromRGBO(8, 173, 173, 0.4),
                        child: CircleAvatar(
                          radius: 55,
                          foregroundImage: AssetImage('assets/avatar.png'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              const Center(
                child: Text('to Labrador',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 0.3)),
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ListTile(
                          title: Text('Enter amount:',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  letterSpacing: 0.3)),
                          trailing: Text('Max  GHS 10,250.00 ',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  letterSpacing: 0.3)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: const Color.fromRGBO(8, 173, 173, 0.7),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                'GHS',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    letterSpacing: 0.3),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Gap(30),
                            const SizedBox(
                              height: 40,
                              width: 200,
                              child: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  cursorColor: Colors.black,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: 'Enter Amount',
                                      hintStyle: TextStyle(
                                        color: Colors.black54,
                                      )),
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black54,
                                      letterSpacing: -0.2),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(300),
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
                          _showMyDialog(context);
                        },
                        splashColor: Colors.white,
                        child: const Text(
                          'Send Money',
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

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return Column(
          children: [
            const Gap(120),
            Image.asset('assets/pop.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Stack(
                children: [
                  // Clipped container
                  ClipShadowPath(
                    clipper: MyClipper(130),
                    shadow: const Shadow(
                      blurRadius: 5,
                      color: Colors.transparent,
                      offset: Offset(0, 0),
                    ),
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(8, 173, 173, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Material(
                                type: MaterialType.transparency,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: IconButton(
                                      splashRadius: 1,
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.close_rounded,
                                        color: Colors.white,
                                      )),
                                ),
                              )
                            ],
                          ),
                          const Gap(30),
                          const Material(
                            type: MaterialType.transparency,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'From',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      Text(
                                        'Bank of Ghana',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Anabella',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      Text(
                                        '***** 1990',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.30,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Divider(
                            indent: 25,
                            endIndent: 25,
                            color: Colors.white,
                            thickness: 1.0,
                          ),
                          const Material(
                            type: MaterialType.transparency,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'To',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      Text(
                                        'MTN Mobile Money',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Maria',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.30,
                                        ),
                                      ),
                                      Text(
                                        '***** 7777',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.30,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Gap(10),
                          const Divider(
                            indent: 25,
                            endIndent: 25,
                            color: Colors.white,
                            thickness: 1.0,
                          ),
                          const Material(
                            type: MaterialType.transparency,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                  Text(
                                    'Ghs 930',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.30,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Gap(30),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
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
                                        context, TransferSuccessful.id);
                                  },
                                  splashColor: Colors.white,
                                  child: const Text(
                                    'Confirm',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(8, 173, 173, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
