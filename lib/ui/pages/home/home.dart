import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:paysenta/ui/shared/widgets/custom_button.dart';

import '../../shared/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
                  height: MediaQuery.of(context).size.height * 0.35,
                  color: primaryColor,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.70,
                  color: Colors.teal.shade50,
                )
              ],
            ),
          ),
          CustomScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            slivers: [
              SliverAppBar(
                backgroundColor: primaryColor,
                automaticallyImplyLeading: false,
                centerTitle: false,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(20),
                    Text(
                      "Balance",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "\$23,000.00",
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                actions: const [
                  Icon(
                    IconlyLight.notification,
                    size: 26,
                    color: whiteColor,
                  ),
                  Gap(20)
                ],
              ),
              SliverList(
                  delegate: SliverChildListDelegate(
                [
                  Container(
                    color: primaryColor,
                    child: Column(
                      children: [
                        const Gap(40),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 38.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Icon(
                                    Icons.qr_code_scanner_sharp,
                                    size: 40,
                                    color: whiteColor,
                                  ),
                                  Text(
                                    "Scan",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: whiteColor,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Icon(
                                    Icons.add_circle_outline_rounded,
                                    size: 40,
                                    color: whiteColor,
                                  ),
                                  Text(
                                    "Top-up",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: whiteColor,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Icon(
                                    Iconsax.money_send5,
                                    size: 40,
                                    color: whiteColor,
                                  ),
                                  Text(
                                    "Send",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: whiteColor,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  const Icon(
                                    Iconsax.money_remove5,
                                    size: 40,
                                    color: whiteColor,
                                  ),
                                  Text(
                                    "Receive",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: whiteColor,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Gap(30),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  color: Colors.yellow.withOpacity(0.2),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: const Icon(
                                    Icons.bolt,
                                    size: 40,
                                    color: Colors.amber,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Electricity",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color:
                                      Colors.lightGreenAccent.withOpacity(0.2),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: const Icon(
                                    Icons.wifi_2_bar,
                                    size: 40,
                                    color: Colors.lightGreenAccent,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Internet",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.blue.withOpacity(0.2),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: const Icon(
                                    Icons.water_drop,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Water",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  color: Colors.redAccent.withOpacity(0.2),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: const Icon(
                                    Icons.hotel,
                                    size: 40,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Hotel",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Gap(40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Icon(
                                  Icons.school_sharp,
                                  size: 40,
                                  color: Colors.brown,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Pay Fees",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.ondemand_video_rounded,
                                  size: 40,
                                  color: Colors.blueAccent,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Movies",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.videogame_asset_sharp,
                                  size: 40,
                                  color: Colors.yellow.shade900,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Games",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.more,
                                  size: 40,
                                  color: primaryColor,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "More",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: blackColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.teal.shade50,
                    child: Column(
                      children: [
                        const Gap(30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Check New Promo",
                                    style: GoogleFonts.nunito(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor,
                                    ),
                                  ),
                                  Text(
                                    "Easy with promo code",
                                    style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: primaryColor),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  "View All",
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: blackColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(30),
                        CarouselSlider(
                          items: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: 170,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: whiteColor,
                                      ),
                                    ),
                                    const Gap(50),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "data data",
                                            style: GoogleFonts.nunito(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          Text(
                                            "30%",
                                            style: GoogleFonts.acme(
                                              fontSize: 38,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          Text(
                                            "datadatadata",
                                            style: GoogleFonts.nunito(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          CustomButton(
                                              color: whiteColor,
                                              width: 100,
                                              height: 30,
                                              onPressed: () {},
                                              radius: 10,
                                              label: const Text("Opt In"))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: 170,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: whiteColor,
                                      ),
                                    ),
                                    const Gap(50),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "data data",
                                            style: GoogleFonts.nunito(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          Text(
                                            "30%",
                                            style: GoogleFonts.acme(
                                              fontSize: 38,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          Text(
                                            "datadatadata",
                                            style: GoogleFonts.nunito(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          CustomButton(
                                              color: whiteColor,
                                              width: 100,
                                              height: 30,
                                              onPressed: () {},
                                              radius: 10,
                                              label: const Text("Opt In"))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                height: 170,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: whiteColor,
                                      ),
                                    ),
                                    const Gap(50),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "data data",
                                            style: GoogleFonts.nunito(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          Text(
                                            "30%",
                                            style: GoogleFonts.acme(
                                              fontSize: 38,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          Text(
                                            "datadatadata",
                                            style: GoogleFonts.nunito(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: whiteColor,
                                            ),
                                          ),
                                          CustomButton(
                                              color: whiteColor,
                                              width: 100,
                                              height: 30,
                                              onPressed: () {},
                                              radius: 10,
                                              label: const Text("Opt In"))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                          options: CarouselOptions(
                            viewportFraction: 0.91,
                            aspectRatio: 16 / 7,
                            // enlargeCenterPage: true,
                            initialPage: 0,
                            autoPlay: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(120),
                ],
              ))
            ],
          ),
        ],
      ),
    );
  }
}
