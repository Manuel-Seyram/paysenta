import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/constants.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_textfield.dart';
import '../navigator/bottom_navigator_bar.dart';

class SetPassword extends StatefulWidget {
  const SetPassword({Key? key}) : super(key: key);
  static const String id = "set password screen route";
  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  bool obscureText = true;

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
                      "Set your password",
                      style: GoogleFonts.amiri(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Image.asset(
                      "assets/images/illustrations/password.png",
                      height: 160,
                    ),
                    const Gap(30),
                    const Text(
                      "Set password to complete registration",
                      textAlign: TextAlign.center,
                    ),
                    const Gap(24),
                    CustomTextField(
                      textFieldLabel: "Password",
                      emailTextController: _emailTextController,
                      isReadOnly: false,
                      isMultiline: false,
                      obscureText: obscureText,
                      widget: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: const Icon(
                          Icons.visibility_off_outlined,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const Gap(8),
                    CustomTextField(
                      textFieldLabel: "Confirm Password",
                      emailTextController: _passwordTextController,
                      isReadOnly: false,
                      isMultiline: false,
                      obscureText: obscureText,
                      widget: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        child: const Icon(
                          Icons.visibility_off_outlined,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const Gap(16),
                    CustomButton(
                      color: primaryColor,
                      width: double.infinity,
                      height: 45,
                      onPressed: () {
                        Navigator.pushNamed(context, MainPageNavigator.id);
                      },
                      radius: 10,
                      label: Text(
                        "Login",
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    const Gap(16),
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
