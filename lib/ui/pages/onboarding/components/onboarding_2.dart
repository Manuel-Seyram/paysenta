import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../shared/constants.dart';

class OnboardingComponent2 extends StatelessWidget {
  const OnboardingComponent2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration:
              const BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
          child: Image.asset("assets/images/illustrations/2. Onboarding - 2 - Dark.png", fit: BoxFit.fitWidth,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 28),
          child: Text(
            "Easy Payment",
            style: GoogleFonts.amiri(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: whiteColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non condimentum nisl, efficitur pulvinar lacus. Mauris et venenatis est, id pellentesque ante. Nulla id lobortis quam. Aenean vitae urna condimentum justo porttitor ultrices nec vel sapien. Sed nec auctor sem. Nam scelerisque ante et euismod volutpat. Phasellus non aliquam ipsum. Ut aliquet ex ac mattis venenatis. Morbi sed lectus tincidunt, sagittis augue et, eleifend ipsum.",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: whiteColor.withOpacity(0.7),
            ),
          ),
        )
      ],
    );
  }
}
