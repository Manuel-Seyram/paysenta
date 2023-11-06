import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:awesome_card/awesome_card.dart';
import 'dart:math' as math;

import '../navigator/bottom_navigator_bar.dart';

class AddCard2 extends StatefulWidget {
  const AddCard2({super.key});
  static const String id = "AddCard2";

  @override
  State<AddCard2> createState() => _AddCard2State();
}

class _AddCard2State extends State<AddCard2> {
  String cardNumber = '';
  String cardHolderName = '';
  String expiryDate = '';
  String cvv = '';
  bool showBack = false;
  int customColorValue = const Color.fromRGBO(0, 0, 0, 0.26).value;

  late FocusNode _focusNode;
  TextEditingController cardNumberCtrllr = TextEditingController();
  TextEditingController expiryFieldCtrllr = TextEditingController();
  TextEditingController cardNameCtrllr = TextEditingController();
  TextEditingController cvvCtrllr = TextEditingController();

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
                  color: const Color.fromRGBO(29, 39, 52, 1),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.70,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(8, 173, 173, 1),
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
                backgroundColor: const Color.fromRGBO(8, 173, 173, 1),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: AppBar(
                    backgroundColor: const Color.fromRGBO(8, 173, 173, 1),
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
                                  border: Border.all(color: Colors.white)),
                              child: FittedBox(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40.0),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(
                                          Icons.arrow_back_ios_new_sharp,
                                          color: Colors.white),
                                    )),
                              )),
                        )
                      ],
                    ),
                    title: const Text('New Card',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
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
                      cardExpiry: expiryDate,
                      cardHolderName: cardHolderName,
                      cvv: cvv,
                      bankName: 'Paysenta',
                      showBackSide: showBack,
                      frontBackground: CardBackgrounds.custom(customColorValue),
                      backBackground: CardBackgrounds.white,
                      //showShadow: true,
                      cardType: CardType.visa,
                      // mask: getCardTypeMask(cardType: CardType.americanExpress),
                    ),
                  ],
                ),
                const Gap(70),
                Column(
                  children: [
                    const Row(
                      children: [
                        Gap(30),
                        Text('Card Detail',
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 0.3)),
                      ],
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          children: [
                            const Gap(5),
                            TextFormField(
                              controller: cardNumberCtrllr,
                              keyboardType: TextInputType.number,
                              maxLength: 16,
                              textInputAction: TextInputAction.next,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              decoration: const InputDecoration(
                                hintText: 'Card Number',
                                counterText: "",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10.0),
                              ),
                              onChanged: (value) {
                                final newCardNumber = value.trim();
                                var newStr = '';
                                const step = 4;

                                for (var i = 0;
                                    i < newCardNumber.length;
                                    i += step) {
                                  newStr += newCardNumber.substring(i,
                                      math.min(i + step, newCardNumber.length));
                                  if (i + step < newCardNumber.length) {
                                    newStr += ' ';
                                  }
                                }

                                setState(() {
                                  cardNumber = newStr;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.425,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(
                              children: [
                                const Gap(5),
                                TextFormField(
                                  controller: expiryFieldCtrllr,
                                  textInputAction: TextInputAction.next,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  decoration: const InputDecoration(
                                    hintText: 'Card Expiry',
                                    counterText: '',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(10.0),
                                  ),
                                  maxLength: 5,
                                  onChanged: (value) {
                                    var newDateValue = value.trim();
                                    final isPressingBackspace =
                                        expiryDate.length > newDateValue.length;
                                    final containsSlash =
                                        newDateValue.contains('/');

                                    if (newDateValue.length >= 2 &&
                                        !containsSlash &&
                                        !isPressingBackspace) {
                                      newDateValue =
                                          '${newDateValue.substring(0, 2)}/${newDateValue.substring(2)}';
                                    }
                                    setState(() {
                                      expiryFieldCtrllr.text = newDateValue;
                                      expiryFieldCtrllr.selection =
                                          TextSelection.fromPosition(
                                              TextPosition(
                                                  offset: newDateValue.length));
                                      expiryDate = newDateValue;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.425,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(
                              children: [
                                const Gap(5),
                                TextFormField(
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.number,
                                  controller: cvvCtrllr,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  decoration: const InputDecoration(
                                      hintText: 'CVV',
                                      counterText: "",
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(10.0)),
                                  maxLength: 3,
                                  onChanged: (value) {
                                    setState(() {
                                      cvv = value;
                                    });
                                  },
                                  focusNode: _focusNode,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Column(
                          children: [
                            const Gap(5),
                            TextFormField(
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                  hintText: 'Card Holder Name',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10.0)),
                              onChanged: (value) {
                                setState(() {
                                  cardHolderName = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    Center(
                        child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.white,
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
                              splashColor: Colors.white,
                              child: const Text(
                                'Save',
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
                )
              ]))
            ],
          )
        ],
      ),
    );
  }
}
