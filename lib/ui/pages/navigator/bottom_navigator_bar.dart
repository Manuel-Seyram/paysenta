import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pandabar/pandabar.dart';
import 'package:paysenta/ui/pages/home/home.dart';
import 'package:paysenta/ui/pages/profile/profile.dart';

import '../../shared/constants.dart';
import '../my cards/my_card.dart';
import '../transactions/transactions.dart';

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
    const MyCards(),
    const TransactionsPage(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: PandaBar(
        backgroundColor: whiteColor,
        buttonColor: Colors.black.withOpacity(0.5),
        buttonSelectedColor: const Color.fromRGBO(8, 173, 173, 1),
        buttonData: [
          PandaBarButtonData(
              id: 0,
              icon: bottomNavBarIndex == 0 ? IconlyBold.home : IconlyLight.home,
              title: 'Home'),
          PandaBarButtonData(
              id: 1,
              icon: bottomNavBarIndex == 1
                  ? Icons.credit_card_rounded
                  : Icons.credit_card_outlined,
              title: 'My Cards'),
          PandaBarButtonData(
              id: 2,
              icon: bottomNavBarIndex == 2
                  ? Icons.table_chart_outlined
                  : Icons.table_chart_rounded,
              title: 'Activity'),
          PandaBarButtonData(
              id: 3,
              icon: bottomNavBarIndex == 3
                  ? IconlyBold.profile
                  : IconlyLight.profile,
              title: 'Profile'),
        ],
        onChange: newIndex,
        fabColors: const [
          Color.fromRGBO(8, 173, 173, 1),
          Color.fromRGBO(8, 173, 173, 1)
        ],
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
