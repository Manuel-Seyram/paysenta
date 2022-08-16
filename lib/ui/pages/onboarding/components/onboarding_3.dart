import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/pages/onboarding/get_started.dart';

import '../../../shared/constants.dart';

class OnboardingComponent3 extends StatelessWidget {
  const OnboardingComponent3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails dragDownDetails) {
        if (dragDownDetails.primaryVelocity == 0) {
          return;
        } // user have just tapped on screen (no dragging)

        if (dragDownDetails.primaryVelocity?.compareTo(0) == -1) {
          if (kDebugMode) {
            Navigator.popAndPushNamed(context, GetStarted.id);
          }
        } else {
          if (kDebugMode) {
            print('dragged from left');
          }
        }
      },
      child: Column(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.amber, shape: BoxShape.circle),
            child: const Center(
              child: Text("Image 3 goes here"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 28),
            child: Text(
              "Shopping Online",
              style: GoogleFonts.amiri(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: whiteColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
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
      ),
    );
  }
}
