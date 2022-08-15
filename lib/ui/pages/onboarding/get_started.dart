import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/pages/authentication/login.dart';
import 'package:paysenta/ui/pages/authentication/register.dart';
import 'package:paysenta/ui/shared/constants.dart';
import 'package:paysenta/ui/shared/widgets/custom_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);
  static const String id = " get started page id";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "PAYSENTA LOGO",
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white),
              ),
              Gap(30),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.amber, shape: BoxShape.circle),
                child: const Center(),
              ),
              Gap(20),
              Text(
                "Welcome to PAYSENTA",
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.white),
              ),
              Text(
                "Lorem ipsum dolor sit amet Nulla id lobortis quam. Sed nec auctor sem. Nam scelerisque ante et euismod volutpat. sagittis augue et, eleifend ipsum.",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: whiteColor.withOpacity(0.7)),
              ),
              Gap(50),
              CustomButton(
                color: Colors.amber,
                borderSideColor: whiteColor,
                width: double.infinity,
                height: 50,
                onPressed: () {
                  Navigator.pushNamed(context, Login.id);
                },
                radius: 5,
                label: Text(
                  "Login",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
              Gap(20),
              CustomButton(
                color: primaryColor,
                borderSideColor: Colors.white,
                width: double.infinity,
                height: 50,
                onPressed: () {
                  Navigator.pushNamed(context, Register.id);
                },
                radius: 5,
                label: Text(
                  "Register",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
