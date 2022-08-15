import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pandabar/pandabar.dart';
import 'package:paysenta/ui/pages/profile/profile.dart';

import '../../shared/constants.dart';
import '../deals/deals.dart';
import '../history/history.dart';
import '../home/home.dart';

class MainPageNavigator extends StatefulWidget {
  const MainPageNavigator({Key? key}) : super(key: key);
  static const String id = "main page route";
  @override
  State<MainPageNavigator> createState() => _MainPageNavigatorState();
}

class _MainPageNavigatorState extends State<MainPageNavigator> {
  int bottomNavBarIndex = 0;
  void newIndex(dynamic index) {
    setState(() {
      bottomNavBarIndex = index;
    });
  }

  List<Widget> pageData = [
    const Home(),
    const HistoryPage(),
    const Deals(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: PandaBar(
        backgroundColor: whiteColor,
        buttonColor: primaryColor.withOpacity(0.5),
        buttonSelectedColor: primaryColor,
        buttonData: [
          PandaBarButtonData(
              id: 0,
              icon: bottomNavBarIndex == 0 ? IconlyBold.home : IconlyLight.home,
              title: 'Home'),
          PandaBarButtonData(
              id: 1,
              icon: bottomNavBarIndex == 1
                  ? IconlyBold.time_square
                  : IconlyLight.time_circle,
              title: 'History'),
          PandaBarButtonData(
              id: 2,
              icon: bottomNavBarIndex == 2 ? IconlyBold.buy : IconlyLight.buy,
              title: 'Deals'),
          PandaBarButtonData(
              id: 3,
              icon: bottomNavBarIndex == 3
                  ? IconlyBold.profile
                  : IconlyLight.profile,
              title: 'Profile'),
        ],
        onChange: newIndex,
        fabColors: const [primaryColor, primaryColor1],
        fabIcon: const Icon(
          Icons.qr_code_scanner_rounded,
          color: whiteColor,
        ),
        onFabButtonPressed: () {
          // Navigator.pushNamed(context, SignUpPage.id);
        },
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: IndexedStack(
        index: bottomNavBarIndex,
        children: pageData,
      ),
    );
  }
}
