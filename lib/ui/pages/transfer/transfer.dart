import 'dart:typed_data';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

import 'select_transfer.dart';

class Transfers extends StatefulWidget {
  const Transfers({super.key});
  static String id = 'Transfers';

  @override
  State<Transfers> createState() => _TransfersState();
}

class _TransfersState extends State<Transfers> {
  TextEditingController searchController = TextEditingController();
  List<Contact>? _contacts;
  bool _permissionDenied = false;

  List<Widget> cardList = [
    Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(8, 173, 173, 1)),
      child: Column(
        children: [
          const Gap(20),
          Row(
            children: [
              const Gap(20),
              const Text('Paysenta',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.3)),
              const Gap(50),
              Image.asset(
                'assets/Card_chips.png',
                height: 40,
                width: 40,
              )
            ],
          ),
          const Gap(90),
          const Row(
            children: [
              Gap(20),
              Text('Balance',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.3)),
            ],
          ),
          const Gap(10),
          const Row(
            children: [
              Gap(20),
              Text('Ghs 10,250.00',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 0.3)),
            ],
          ),
          const Gap(30),
          Row(
            children: [
              const Gap(20),
              Image.asset(
                'assets/mastercard.png',
                height: 40,
                width: 40,
              ),
            ],
          )
        ],
      ),
    ),
    Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromRGBO(0, 0, 0, 0.26)),
      child: Column(
        children: [
          const Gap(20),
          Row(
            children: [
              const Gap(20),
              const Text('Paysenta',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.3)),
              const Gap(50),
              Image.asset(
                'assets/Card_chips.png',
                height: 40,
                width: 40,
              )
            ],
          ),
          const Gap(90),
          const Row(
            children: [
              Gap(20),
              Text('Balance',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.3)),
            ],
          ),
          const Gap(10),
          const Row(
            children: [
              Gap(20),
              Text('Ghs 10,250.00',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 0.3)),
            ],
          ),
          const Gap(30),
          Row(
            children: [
              const Gap(20),
              Image.asset(
                'assets/mastercard.png',
                height: 40,
                width: 40,
              ),
            ],
          )
        ],
      ),
    )
  ];
  @override
  void initState() {
    super.initState();
    _fetchContacts();
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts();
      setState(() => _contacts = contacts);
    }
  }

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
                  const Text('Transfers',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(20),
              const Row(
                children: [
                  Gap(30),
                  Text('Choose Cards ',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                      autoPlay: false,
                      aspectRatio: 1.2,
                      enlargeCenterPage: false,
                      viewportFraction: 0.65),
                  items: cardList,
                ),
              ),
              const Gap(20),
              const Row(
                children: [
                  Gap(30),
                  Text('Choose Recipients ',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextField(
                      controller: searchController,
                      decoration: const InputDecoration(
                          hintText: "Search contacts...",
                          hintStyle: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              letterSpacing: 0.3),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: contact(),
              ),
              const Gap(20),
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
                          Navigator.pushNamed(context, SelectTransferType.id);
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
            ],
          ),
        ),
      ),
    );
  }

  Widget contact() {
    if (_permissionDenied) {
      return const Center(
          child: Text('Please allow permmission to access contacts.'));
    }
    if (_contacts == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return SizedBox(
      height: 160.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _contacts!.length,
          itemBuilder: (context, index) {
            Uint8List? contactPhoto = _contacts![index].photo;
            return SizedBox(
              height: 160.0,
              width: 130.0,
              child: Card(
                color: const Color.fromRGBO(29, 58, 112, 1),
                elevation: 8.0,
                margin: const EdgeInsets.all(4.0),
                semanticContainer: true,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    const Gap(20),
                    Center(
                      child: CircleAvatar(
                        radius: 25,
                        foregroundImage: contactPhoto != null
                            ? MemoryImage(contactPhoto)
                            : null,
                      ),
                    ),
                    const Gap(40),
                    Center(
                      child: Text(
                        _contacts![index].displayName,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 0.3),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
