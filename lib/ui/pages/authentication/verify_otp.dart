import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/pages/navigator/bottom_navigator_bar.dart';
import 'package:paysenta/ui/shared/constants.dart';
import 'package:paysenta/ui/shared/widgets/custom_button.dart';

import '../../shared/widgets/otp_inputfield.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({Key? key}) : super(key: key);
  static const String id = "VerifyOTP page id";
  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.30,
                  color: primaryColor,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.70,
                  color: Colors.teal.shade50,
                )
              ],
            ),
          ),
          SizedBox.expand(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.only(left: 32, right: 32, top: 100),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text(
                      "Verify OTP",
                      style: GoogleFonts.amiri(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 150,
                      color: primaryColor,
                      child: const Center(
                        child: Text("OTP Image goes here"),
                      ),
                    ),
                    const Gap(30),
                    const Text(
                      "Lorem ipsum do lor sit ametmNulla id lobortis quam. Lorem ipsum do lor sit ametmNulla id lobortis quam",
                      textAlign: TextAlign.center,
                    ),
                    const Gap(24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OtpInput(controller: _fieldOne, autoFocus: true),
                        OtpInput(controller: _fieldTwo, autoFocus: false),
                        OtpInput(controller: _fieldThree, autoFocus: false),
                        OtpInput(controller: _fieldFour, autoFocus: false),
                      ],
                    ),
                    const Gap(16),
                    CustomButton(
                      color: primaryColor,
                      width: double.infinity,
                      height: 45,
                      onPressed: () {
                        Navigator.popAndPushNamed(
                            context, MainPageNavigator.id);
                      },
                      radius: 10,
                      label: Text(
                        "Verify",
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
