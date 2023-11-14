import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'widget/clip_shadow_path.dart';
import 'widget/clipper.dart';
import 'widget/money_sent_splash.dart';

class SendMoneyBank extends StatefulWidget {
  const SendMoneyBank({super.key});
  static String id = 'SendMoneyBank';

  @override
  State<SendMoneyBank> createState() => _SendMoneyBankState();
}

class _SendMoneyBankState extends State<SendMoneyBank> {
  final List<String> banks = [
    'Standard Chartered Bank',
    'EcoBank',
    'Bank of America',
  ];
  String? selectedValue;

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
                  const Text('Send To Bank',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(8, 173, 173, 1),
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
                        color: Colors.black,
                        letterSpacing: 0.3)),
              ),
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(8, 173, 173, 1),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset('assets/images/bank.png'),
                          ),
                          DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: const Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Select Bank',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items: banks
                                  .map((String banks) =>
                                      DropdownMenuItem<String>(
                                        value: banks,
                                        child: Text(
                                          banks,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              },
                              buttonStyleData: const ButtonStyleData(
                                height: 50,
                                width: 250,
                                padding: EdgeInsets.only(left: 14, right: 14),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                              ),
                              iconStyleData: const IconStyleData(
                                icon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                ),
                                iconSize: 16,
                                iconEnabledColor: Colors.black,
                                iconDisabledColor: Colors.grey,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: 200,
                                width: 280,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.white,
                                ),
                                offset: const Offset(-20, 0),
                                scrollbarTheme: ScrollbarThemeData(
                                  radius: const Radius.circular(40),
                                  thickness:
                                      MaterialStateProperty.all<double>(6),
                                  thumbVisibility:
                                      MaterialStateProperty.all<bool>(true),
                                ),
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                                padding: EdgeInsets.only(left: 20, right: 20),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 350,
                  height: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(8, 173, 173, 1),
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: ListTile(
                          title: Text('Enter Account Number:',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                  letterSpacing: 0.3)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 40,
                              width: 200,
                              child: Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  cursorColor: Colors.black,
                                  autofocus: false,
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: 'Enter Account Number',
                                      hintStyle: TextStyle(
                                        color: Colors.black54,
                                      )),
                                  style: TextStyle(
                                      fontSize: 20.0,
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
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 110,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromRGBO(8, 173, 173, 1),
                      ),
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
                                  autofocus: false,
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
              const Gap(50),
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
                          _showMyDialog(context);
                        },
                        splashColor: const Color.fromRGBO(8, 173, 173, 1),
                        child: const Text(
                          'Send Money',
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
