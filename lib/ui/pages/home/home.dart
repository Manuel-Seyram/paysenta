import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/pages/Deposit/top_up.dart';
import 'package:paysenta/ui/pages/transactions/transactions.dart';
import 'package:paysenta/ui/pages/withdraw/withdraw.dart';

import '../../shared/constants.dart';
import '../transfer/transfer.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  static const String id = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> cardList = [
    Container(
      height: 250,
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
          const Gap(120),
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
      height: 250,
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
          const Gap(120),
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
                  color: const Color.fromRGBO(245, 246, 250, 1),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.70,
                  decoration: const BoxDecoration(color: Colors.white),
                )
              ],
            ),
          ),
          CustomScrollView(
            physics: const NeverScrollableScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                automaticallyImplyLeading: false,
                //expandedHeight: 70.0,
                backgroundColor: Colors.white,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(70.0),
                  child: AppBar(
                    backgroundColor: Colors.white,
                    toolbarHeight: 90,
                    leadingWidth: 160,
                    leading: const Row(
                      children: [
                        Column(
                          children: [
                            Gap(25),
                            Padding(
                              padding: EdgeInsets.only(right: 50.0),
                              child: Text('Welcome,',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(8, 173, 173, 1),
                                      letterSpacing: 0.3)),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: FittedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      'Adwoa Kumi',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          letterSpacing: 0.3),
                                      softWrap: true,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(8, 173, 173, 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              onPressed: () {},
                              splashRadius: 1.0,
                              icon: const Icon(
                                Icons.notifications_none_rounded,
                                size: 30,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  children: [
                    const Gap(30),
                    Row(
                      children: [
                        Expanded(
                          flex: 10,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 246, 250, 1)),
                            child: Container(
                              height: 330,
                              width: 200,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(8, 173, 173, 1),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Column(
                                children: [
                                  const Gap(15),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, TopUp.id);
                                    },
                                    child: Image.asset(
                                      'assets/deposit.png',
                                      width: 70,
                                      height: 70,
                                    ),
                                  ),
                                  const Gap(5),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Transfers.id);
                                    },
                                    child: Image.asset(
                                      'assets/transfer.png',
                                      width: 70,
                                      height: 70,
                                    ),
                                  ),
                                  const Gap(5),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, Withdraw.id);
                                    },
                                    child: Image.asset(
                                      'assets/withdraw.png',
                                      width: 70,
                                      height: 70,
                                    ),
                                  ),
                                  const Gap(5),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/more.png',
                                      width: 70,
                                      height: 70,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 31,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromRGBO(245, 246, 250, 1)),
                            child: Column(
                              children: [
                                const Gap(10),
                                CarouselSlider(
                                  options: CarouselOptions(
                                      autoPlay: false,
                                      aspectRatio: 1.0,
                                      enlargeCenterPage: false,
                                      viewportFraction: 0.75),
                                  items: cardList,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const Gap(60),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const Gap(25),
                          const Text('Today, Dec 29',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                  letterSpacing: 0.3)),
                          const Gap(145),
                          SizedBox(
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, TransactionsPage.id);
                                  },
                                  child: const Text('All transactions',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          letterSpacing: 0.3)),
                                ),
                                const Gap(10),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, TransactionsPage.id);
                                  },
                                  child: const Icon(
                                    Icons.arrow_forward_ios,
                                    size: 14,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    //Transactions
                    const Gap(30),
                    SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: SizedBox(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: ListTile(
                                  tileColor: whiteColor.withOpacity(0),
                                  leading: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: primaryColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(
                                      Icons.add_circle,
                                      color: primaryColor,
                                    ),
                                  ),
                                  title: Text(
                                    "Top Up",
                                    style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "2 June 2020",
                                    style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Text(
                                    "GHS500.00",
                                    style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              const Divider(
                                thickness: 1.0,
                                color: Colors.black,
                                endIndent: 30,
                                indent: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: ListTile(
                                  tileColor: whiteColor.withOpacity(0),
                                  leading: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: primaryColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(
                                      Icons.add_circle,
                                      color: primaryColor,
                                    ),
                                  ),
                                  title: Text(
                                    "Top Up",
                                    style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "2 June 2020",
                                    style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Text(
                                    "GHS500.00",
                                    style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              const Divider(
                                thickness: 1.0,
                                color: Colors.black,
                                endIndent: 30,
                                indent: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: ListTile(
                                  tileColor: whiteColor.withOpacity(0),
                                  leading: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: primaryColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(
                                      Icons.add_circle,
                                      color: primaryColor,
                                    ),
                                  ),
                                  title: Text(
                                    "Top Up",
                                    style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "2 June 2020",
                                    style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  trailing: Text(
                                    "GHS500.00",
                                    style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              const Divider(
                                thickness: 1.0,
                                color: Colors.black,
                                endIndent: 30,
                                indent: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ]))
            ],
          )
        ],
      ),
    );
  }
}
