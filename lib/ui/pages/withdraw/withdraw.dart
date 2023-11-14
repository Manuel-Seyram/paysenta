import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../navigator/bottom_navigator_bar.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({super.key});
  static String id = "Withdraw";

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
                  const Gap(90),
                  const Text('Withdraw',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(8, 173, 173, 1),
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(50),
              const Center(
                  child: Text('Balance',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          letterSpacing: 0.3))),
              const Gap(30),
              const Center(
                  child: Text('Maximum ₵10,250.00',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          letterSpacing: 0.3))),
              const Gap(30),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: const Color.fromRGBO(8, 173, 173, 1),
                  )),
                  child: const FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 90,
                      width: 250,
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 40),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.black,
                          maxLines: 1,
                          autofocus: true,
                          decoration: InputDecoration(
                            prefix: Text(
                              'GHS ',
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  letterSpacing: -0.2),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              overflow: TextOverflow.ellipsis,
                              letterSpacing: -0.2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(350),
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
                          _bottomsheet(context);
                        },
                        splashColor: const Color.fromRGBO(8, 173, 173, 1),
                        child: const Text(
                          'Withdraw',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
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
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Select your bank',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
            ],
          ),
          const Gap(40),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    height: 100,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundColor: const Color.fromRGBO(8, 173, 173, 1),
                        child: Center(
                          child: Image.asset(
                            'assets/stanbic.png',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                      title: const Text(
                        'Stanbic Bank',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.30,
                        ),
                      ),
                      subtitle: const Text(
                        '**** **** **** 1234',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.30,
                        ),
                      ),
                      trailing: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                              activeColor: const Color.fromRGBO(8, 173, 173, 1),
                              focusColor: const Color.fromRGBO(8, 173, 173, 1),
                              splashRadius: 1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              value: true,
                              onChanged: (value) {}),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
          const Gap(30),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    padding: const EdgeInsets.only(top: 9),
                    height: 70,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const ListTile(
                        leading: Icon(
                          Icons.money_rounded,
                          color: Color.fromRGBO(8, 173, 173, 1),
                          size: 30,
                        ),
                        title: Text(
                          'Add new bank',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.30,
                          ),
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: Icon(Icons.arrow_forward_ios_rounded),
                        )),
                  )),
            ],
          ),
          const Gap(150),
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
        ],
      ),
    ),
  );
}
