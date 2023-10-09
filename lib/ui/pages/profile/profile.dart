import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/pages/profile/widgets/general%20settings/general_settings.dart';
import 'package:paysenta/ui/pages/profile/widgets/password%20recovery/password_recovery.dart';

import '../../shared/constants.dart';
import 'widgets/account info/account_info.dart';
import 'widgets/faq/faq.dart';
import 'widgets/referral/referral.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
            const Center(
              child: Text('Profile',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 0.3)),
            ),
            const Gap(40),
            const SizedBox(
              child: Center(
                child: CircleAvatar(
                  radius: 75,
                  backgroundColor: Color.fromRGBO(29, 171, 135, 1),
                  child: CircleAvatar(
                    radius: 73,
                    backgroundColor: Color.fromRGBO(8, 173, 173, 0.4),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Color.fromRGBO(8, 173, 173, 0.4),
                      child: CircleAvatar(
                        radius: 55,
                        foregroundImage: AssetImage('assets/avatar.png'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(20),
            const Center(
              child: Text('Adwoa Kumi',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 0.3)),
            ),
            const Gap(5),
            const Center(
              child: Text('adwoakumi@mail.com',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 0.3)),
            ),
            const Gap(20),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listTileWidgets(context).length,
                itemBuilder: (context, index) {
                  return listTileWidgets(context)[index];
                },
              ),
            ),
            const Gap(20),
          ],
        )),
      ),
    );
  }
}

List<Widget> listTileWidgets(BuildContext context) {
  return [
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Referral.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListTile(
          tileColor: whiteColor.withOpacity(0),
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.bolt,
              color: Colors.amber,
            ),
          ),
          title: Text(
            "Referral Code",
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
          ),
        ),
      ),
    ),
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AccountInfo.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListTile(
          tileColor: whiteColor.withOpacity(0),
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
          title: Text(
            "Account Info",
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
          ),
        ),
      ),
    ),
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, FAQ.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListTile(
          tileColor: whiteColor.withOpacity(0),
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              CupertinoIcons.person_2,
              color: Colors.purple,
            ),
          ),
          title: Text(
            "FAQs",
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ListTile(
        tileColor: whiteColor.withOpacity(0),
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.language_rounded,
            color: Colors.blue,
          ),
        ),
        title: Text(
          "Language",
          style: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_sharp,
          color: Colors.white,
        ),
      ),
    ),
    const Gap(30),
    const Divider(
      thickness: 1.0,
      indent: 30,
      endIndent: 30,
      color: Colors.white,
    ),
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, GeneralSettings.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListTile(
          tileColor: whiteColor.withOpacity(0),
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.settings,
              color: Colors.pink,
            ),
          ),
          title: Text(
            "General Settings",
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
          ),
        ),
      ),
    ),
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PasswordRecovery.id);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListTile(
          tileColor: whiteColor.withOpacity(0),
          leading: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.lock_outline_rounded,
              color: Colors.orange,
            ),
          ),
          title: Text(
            "Change Password",
            style: GoogleFonts.nunito(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
          ),
        ),
      ),
    ),
  ];
}
