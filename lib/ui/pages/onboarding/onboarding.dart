import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/pages/onboarding/components/onboarding_2.dart';
import 'package:paysenta/ui/pages/onboarding/components/onboarding_3.dart';
import 'package:paysenta/ui/shared/constants.dart';

import '../../shared/widgets/slide_indicator.dart';
import 'components/onboarding_1.dart';
import 'get_started.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);
  static const String id = "onboarding page id";
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> onboardingPageList = [
      const OnboardingComponent1(),
      const OnboardingComponent2(),
      GestureDetector(
          onHorizontalDragEnd: (DragEndDetails dragDownDetails) {
            if (dragDownDetails.primaryVelocity == 0) {
              return;
            } // user have just tapped on screen (no dragging)

            if (dragDownDetails.primaryVelocity?.compareTo(0) == -1) {
              if (kDebugMode) {
                Navigator.popAndPushNamed(context, GetStarted.id);
              }
            } else {
              setState(() {
                _currentPage = _currentPage--;
              });
              if (kDebugMode) {
                print('dragged from left');
              }
            }
          },
          child: const OnboardingComponent3()),
    ];

    return Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          elevation: 0.0,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, GetStarted.id);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 24.0),
                child: Text(
                  "SKIP",
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: whiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const Gap(50),
            Expanded(
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: onboardingPageList.length,
                itemBuilder: (context, index) => onboardingPageList[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < onboardingPageList.length; i++)
                    i == _currentPage
                        ? const SlideIndicator(isActive: true)
                        : GestureDetector(
                            onTap: () {
                              _pageController.jumpToPage(i);
                            },
                            child: const SlideIndicator(
                              isActive: false,
                            ),
                          )
                ],
              ),
            ),
            const Gap(60),
          ],
        ));
  }
}
