import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:paysenta/ui/shared/widgets/custom_button.dart';

import '../../shared/constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
                  height: MediaQuery.of(context).size.height * 0.25,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.only(top: 10),
              children: [
                SafeArea(
                  bottom: false,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                        style: GoogleFonts.nunito(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        IconlyLight.notification,
                        size: 24,
                        color: whiteColor,
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                Container(
                  height: 250,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("User profile picture goes here"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(width: 1)),
                              child: Row(
                                children: [
                                  const Icon(Icons.qr_code_scanner_outlined),
                                  const Text("QR Code")
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(width: 1)),
                              child: Row(
                                children: [
                                  const Icon(Icons.qr_code_scanner_outlined),
                                  const Text("QR Code")
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Gap(16),
                const ListTile(
                  leading: const Icon(Icons.person),
                  title: Text("Change Profile"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: const Icon(Icons.credit_card),
                  title: Text("My Card"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: const Icon(Icons.airplane_ticket),
                  title: Text("Promo Code"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: const Icon(Icons.security),
                  title: Text("Change Security Code"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  leading: const Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Gap(16),
                const ListTile(
                  leading: const Icon(Icons.receipt_rounded),
                  title: Text("Terms of Service"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                Gap(20),
                CustomButton(
                  color: Colors.pink,
                  width: double.infinity,
                  height: 48,
                  onPressed: () {},
                  radius: 10,
                  label: const Text("Sign Out"),
                ),
                Gap(100),
              ],
            ),
          )
        ],
      ),
    );
  }
}
