import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
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
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/avatar"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      const Gap(8),
                      Text(
                        "Keziah Annan",
                        style: GoogleFonts.manrope(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "054-243-5381",
                        style: GoogleFonts.manrope(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Divider(
                        thickness: 0.7,
                        color: Colors.grey.shade500,
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
                                  color: Colors.grey.shade500,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.qr_code_scanner_outlined),
                                  const Gap(10),
                                  Text(
                                    "QR Code",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
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
                                    color: Colors.grey.shade500,
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Iconsax.scan_barcode),
                                  const Gap(10),
                                  Text(
                                    " Barcode",
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
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
                      Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          tileColor: whiteColor,
                          leading: const Icon(Icons.person),
                          title: Text(
                            "Change Profile",
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          leading: const Icon(Icons.credit_card),
                          title: Text(
                            "My Card",
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          leading: const Icon(Icons.airplane_ticket),
                          title: Text(
                            "Promo Code",
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          leading: const Icon(Icons.security),
                          title: Text(
                            "Change Security Code",
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          leading: const Icon(Icons.settings),
                          title: Text(
                            "Settings",
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      const Gap(10),
                      Card(
                        child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          leading: const Icon(Icons.receipt_rounded),
                          title: Text(
                            "Terms of Service",
                            style: GoogleFonts.manrope(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios),
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
