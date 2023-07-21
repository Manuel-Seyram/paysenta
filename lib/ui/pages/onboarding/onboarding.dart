import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/pages/onboarding/components/onboarding_2.dart';
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
          child: const OnboardingComponent2()),
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
            const Gap(10),
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
            const Gap(100),
            Center(
                child: Container(
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    width: 350.0,
                    height: 56.0,
                    child: MaterialButton(
                      onPressed: () {
                      },
                      splashColor: Colors.white,
                      child: const Text(
                        'Get started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF1D3A6F),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                      ),
                    ))),
                    const Gap(20)
          ],
        ));
  }
}
