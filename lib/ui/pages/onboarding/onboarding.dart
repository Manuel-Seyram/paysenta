import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/pages/onboarding/components/onboarding_2.dart';

import '../../shared/widgets/slide_indicator.dart';
import '../authentication/login.dart';
import 'components/onboarding_1.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);
  static const String id = "onboarding page id";
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  int _clickCount = 0; // Variable to keep track of button clicks

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
                Navigator.popAndPushNamed(context, Login.id);
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
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          forceMaterialTransparency: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, Login.id);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 24.0),
                child: Text(
                  "SKIP",
                  style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(8, 173, 173, 1),
                  ),
                ),
              ),
            )
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(8, 173, 173, 1),
          ),
          child: Column(
            children: [
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
                padding: const EdgeInsets.symmetric(vertical: 1.0),
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
                          _pageController.jumpToPage(_currentPage + 1);
                          _clickCount++; // Increment the click count
                          if (_clickCount == 2) {
                            // Check if button has been clicked twice
                            Navigator.pushNamed(context, Login.id);
                          }
                        },
                        splashColor: Colors.white,
                        child: const Text(
                          'Get started',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(8, 173, 173, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ))),
              const Gap(20)
            ],
          ),
        ));
  }
}
