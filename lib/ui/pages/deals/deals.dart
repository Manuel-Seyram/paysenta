import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:paysenta/ui/shared/widgets/custom_button.dart';

import '../../shared/constants.dart';

class Deals extends StatelessWidget {
  const Deals({Key? key}) : super(key: key);

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
                  height: MediaQuery.of(context).size.height * 0.20,
                  color: primaryColor,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
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
                floating: true,
                automaticallyImplyLeading: false,
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Deals",
                    style: GoogleFonts.oswald(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                actions: const [
                  Icon(
                    IconlyLight.notification,
                    size: 24,
                    color: whiteColor,
                  ),
                  Gap(20)
                ],
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                const Gap(40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Container(
                    height: 120,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            const Icon(
                              IconlyBold.more_square,
                              size: 40,
                              color: primaryColor,
                            ),
                            Text(
                              "All",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Gap(50),
                        Column(
                          children: [
                            const Icon(
                              Icons.fastfood,
                              size: 40,
                              color: primaryColor,
                            ),
                            Text(
                              "Food",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Gap(50),
                        Column(
                          children: [
                            const Icon(
                              Iconsax.money_send5,
                              size: 40,
                              color: primaryColor,
                            ),
                            Text(
                              "Send",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        Gap(50),
                        Column(
                          children: [
                            const Icon(
                              Iconsax.money_remove5,
                              size: 40,
                              color: primaryColor,
                            ),
                            Text(
                              "Receive",
                              style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Container(
                  height: 250,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Row(
                          children: [
                            const Icon(Icons.watch_later_sharp),
                            Column(
                              children: const [
                                Text("Wednesday"),
                                Text("2 Jun 2020"),
                              ],
                            ),
                            const Spacer(),
                            const Text("GROAM39")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(16),
                Container(
                  height: 250,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Row(
                          children: [
                            const Icon(Icons.watch_later_sharp),
                            Column(
                              children: const [
                                Text("Wednesday"),
                                Text("2 Jun 2020"),
                              ],
                            ),
                            const Spacer(),
                            const Text("GROAM39")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(16),
                Container(
                  height: 250,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Row(
                          children: [
                            const Icon(Icons.watch_later_sharp),
                            Column(
                              children: const [
                                Text("Wednesday"),
                                Text("2 Jun 2020"),
                              ],
                            ),
                            const Spacer(),
                            const Text("GROAM39")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(16),
                Container(
                  height: 250,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Row(
                          children: [
                            const Icon(Icons.watch_later_sharp),
                            Column(
                              children: const [
                                Text("Wednesday"),
                                Text("2 Jun 2020"),
                              ],
                            ),
                            const Spacer(),
                            const Text("GROAM39")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(120),
              ]))
            ],
          ),
        ],
      ),
    );
  }
}
