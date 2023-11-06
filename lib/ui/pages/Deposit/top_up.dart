import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import 'top_up_confirmation.dart';
import 'widgets/cards_items.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});
  static String id = 'TopUp';

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  final List<String> banks = [
    'Standard Chartered Bank',
    'EcoBank',
    'Bank of America',
  ];

  String? selectedValue1;
  String? selectedValue2;

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
                            border: Border.all(color: const Color.fromRGBO(8, 173, 173, 1),
                            )),
                        child: FittedBox(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(Icons.arrow_back_ios_new_sharp,
                                    color:  Color.fromRGBO(8, 173, 173, 1),
                                ),
                              )),
                        )),
                  ),
                  const Gap(100),
                  const Text('Top Up',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color:  Color.fromRGBO(8, 173, 173, 1),
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 350,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                            color: const Color.fromRGBO(8, 173, 173, 1),
                          ),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: const Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Select Card for Top Up',
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
                              items: MenuItems.firstItems
                                  .map<DropdownMenuItem<String>>(
                                    (item) => DropdownMenuItem<String>(
                                      value: item.text,
                                      child: MenuItems.buildItem(item),
                                    ),
                                  )
                                  .toList(),
                              value: selectedValue1,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue1 = value as String?;
                                });
                                MenuItems.onChanged(
                                  context,
                                  value as MenuItemType,
                                );
                              },
                              buttonStyleData: const ButtonStyleData(
                                height: 50,
                                width: 310,
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
                                maxHeight: 350,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
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
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, bottom: 20),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              const Gap(20),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromRGBO(8, 173, 173, 1),
                      ),
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
                          trailing: Text('Top up fee Ghs 2.00 ',
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
                          Container(
                            height: 40,
                            width: 40,
                            color: Colors.blue,
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
                              value: selectedValue2,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue2 = value;
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
              const Gap(250),
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
                          Navigator.pushNamed(context, TopUpConfirmation.id);
                        },
                        splashColor: const Color.fromRGBO(8, 173, 173, 1),
                        child: const Text(
                          'Continue',
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
