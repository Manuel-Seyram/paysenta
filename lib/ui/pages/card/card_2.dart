import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:awesome_card/awesome_card.dart';

import '../navigator/bottom_navigator_bar.dart';

class AddCard2 extends StatefulWidget {
  const AddCard2({super.key});
  static const String id = "AddCard2";

  @override
  State<AddCard2> createState() => _AddCard2State();
}

class _AddCard2State extends State<AddCard2> {
  String cardNumber = '8746 5324 1568 7908';
  String cardHolderName = '';
  String expiryDate = '';
  String cvv = '';
  bool showBack = false;
  int customColorValue = const Color.fromRGBO(0, 0, 0, 0.26).value;

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _focusNode.hasFocus ? showBack = true : showBack = false;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.50,
                  color: const Color.fromRGBO(245, 246, 250, 1),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 120.0,
                backgroundColor: Colors.white,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: AppBar(
                    backgroundColor: Colors.white,
                    toolbarHeight: 100,
                    leadingWidth: 100,
                    leading: Row(
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
                                      color: const Color.fromRGBO(
                                          8, 173, 173, 1))),
                              child: FittedBox(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40.0),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                          Icons.arrow_back_ios_new_sharp,
                                          color:
                                              Color.fromRGBO(8, 173, 173, 1)),
                                    )),
                              )),
                        )
                      ],
                    ),
                    title: const Text('New Card',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(8, 173, 173, 1),
                            letterSpacing: 0.3)),
                    centerTitle: true,
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  children: [
                    const Gap(30),
                    CreditCard(
                      cardNumber: cardNumber,
                      cardExpiry: '11/26',
                      cardHolderName: 'Adwoa Kumi',
                      cvv: '453',
                      bankName: 'Paysenta',
                      showBackSide: showBack,
                      frontBackground: CardBackgrounds.custom(customColorValue),
                      backBackground: CardBackgrounds.white,
                      //showShadow: true,
                      cardType: CardType.visa,
                      mask: getCardTypeMask(cardType: CardType.visa),
                    ),
                  ],
                ),
                const Gap(70),
                Column(
                  children: [
                    const Row(
                      children: [
                        Gap(30),
                        Text('Card Limit',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                letterSpacing: 0.3)),
                      ],
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 360,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromRGBO(8, 173, 173, 1),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 120),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            cursorColor: Colors.black,
                            maxLines: 1,
                            autofocus: false,
                            decoration: InputDecoration(
                                prefixText: 'GHS ',
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: 'Enter limit'),
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black54,
                                overflow: TextOverflow.ellipsis,
                                letterSpacing: -0.2),
                          ),
                        ),
                      ),
                    ),
                    const Gap(150),
                    Center(
                        child: Container(
                            decoration: ShapeDecoration(
                                color: const Color.fromRGBO(8, 173, 173, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                )),
                            width: 370.0,
                            height: 56.0,
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, MainPageNavigator.id);
                              },
                              splashColor: const Color.fromRGBO(8, 173, 173, 1),
                              child: const Text(
                                'Save',
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
                )
              ]))
            ],
          )
        ],
      ),
    );
  }
}
