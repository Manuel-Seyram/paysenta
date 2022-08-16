import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:paysenta/ui/pages/authentication/login.dart';
import 'package:paysenta/ui/shared/widgets/custom_button.dart';

import '../../shared/constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0.1,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text(
          "Profile",
          style: GoogleFonts.nunito(
            fontSize: 22,
            color: Colors.white,
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
          SafeArea(
            bottom: false,
            child: ListView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.only(top: 10),
              children: [
                const Gap(20),
                Container(
                  height: 270,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 90,
                        width: 90,
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "User profile picture goes here",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.manrope(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: whiteColor),
                        ),
                      ),
                      const Gap(8),
                      Text(
                        "Todd Nelson",
                        style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "054-000-0000",
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Divider(
                        thickness: 0.7,
                        color: blackColor.withOpacity(0.7),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  width: 1,
                                  color: blackColor.withOpacity(0.5),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.qr_code_scanner_outlined),
                                  Text("QR Code")
                                ],
                              ),
                            ),
                          ),
                          const Gap(20),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 1,
                                    color: blackColor.withOpacity(0.5),
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.qr_code_scanner_outlined),
                                  Text("QR Code")
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Gap(16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  color: Colors.teal.shade50,
                  child: Column(
                    children: [
                      const Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          tileColor: whiteColor,
                          leading: Icon(Icons.person),
                          title: Text("Change Profile"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      const Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          leading: Icon(Icons.credit_card),
                          title: Text("My Card"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      const Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          leading: Icon(Icons.airplane_ticket),
                          title: Text("Promo Code"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      const Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          leading: Icon(Icons.security),
                          title: Text("Change Security Code"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      const Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          leading: Icon(Icons.settings),
                          title: Text("Settings"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      const Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          leading: Icon(Icons.receipt_rounded),
                          title: Text("Terms of Service"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(20),
                      CustomButton(
                        color: Colors.pink,
                        width: double.infinity,
                        height: 50,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, Login.id, (route) => true);
                        },
                        radius: 10,
                        label: Text(
                          "Sign Out",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w600,
                            color: whiteColor,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const Gap(120),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
