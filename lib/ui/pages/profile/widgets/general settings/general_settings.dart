import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../shared/constants.dart';

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});
  static String id = "generalSettings";

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
                  const Gap(60),
                  const Text('General Settings',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(30),
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
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> listTileWidgets(BuildContext context) {
  return [
    GestureDetector(
      onTap: () {},
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
              Icons.notifications_none_rounded,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Default Notification Actions",
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
      onTap: () {},
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
              color: Colors.pinkAccent,
            ),
          ),
          title: Text(
            "Manage Notifications",
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
    const Gap(30),
    const Divider(
      thickness: 1.0,
      indent: 30,
      endIndent: 30,
      color: Colors.white,
    ),
  ];
}
