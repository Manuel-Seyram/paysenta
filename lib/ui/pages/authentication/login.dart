import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:paysenta/ui/pages/authentication/verify_otp.dart';
import 'package:paysenta/ui/shared/constants.dart';
import 'package:paysenta/ui/shared/widgets/custom_button.dart';
import 'package:paysenta/ui/shared/widgets/custom_textfield.dart';

import '../../shared/widgets/custom_country_picker.dart';
import '../../utils/countries.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const String id = "login page id";
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _phoneNumberTextController =
      TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  bool obscureText = true;

  String _countryCode = "+233";

  Countries allCountries = Countries();
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
                      "Login",
                      style: GoogleFonts.amiri(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 150,
                      color: primaryColor,
                      child: const Center(
                        child: Text("Login Image goes here"),
                      ),
                    ),
                    const Gap(30),
                    const Text(
                      "Lor  em ips  um do       l or sit am   et           Nulla id lobortis quam.",
                      textAlign: TextAlign.center,
                    ),
                    const Gap(24),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 65.0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: const Color(0xFFE5E7EB),
                              ),
                            ),
                            child: InkWell(
                              onTap: () async {
                                _countryCode =
                                    await showCupertinoModalBottomSheet(
                                        expand: true,
                                        isDismissible: false,
                                        context: context,
                                        backgroundColor:
                                            Colors.amber.withOpacity(0.0),
                                        builder: (context) =>
                                            CustomCountryPicker(
                                              countyCode: _countryCode,
                                            ));
                                setState(() {});
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    allCountries.countries.singleWhere(
                                        (element) =>
                                            element['code'] ==
                                            _countryCode)['flag'],
                                    height: 14,
                                    width: 18,
                                    fit: BoxFit.fill,
                                  ),
                                  const Icon(
                                    CupertinoIcons.chevron_down,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Gap(5),
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              controller: _phoneNumberTextController,
                              maxLength: 9,
                              keyboardType: TextInputType.phone,
                              style: GoogleFonts.manrope(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.00,
                                  height: 22 / 14,
                                  color: Color(0xFF18273A),
                                ),
                              ),
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              autocorrect: false,
                              enableSuggestions: false,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 16.0),
                                hintText: "Mobile Number",
                                counterText: '',
                                hintStyle: GoogleFonts.manrope(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    height: 16.39 / 14,
                                    color: const Color(0xFFC0C0C0)
                                        .withOpacity(0.94),
                                  ),
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 18, horizontal: 16.0),
                                  child: Text(
                                    _countryCode,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.manrope(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                        height: 16.39 / 14,
                                        color: const Color(0xFF18273A)
                                            .withOpacity(0.94),
                                      ),
                                    ),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFE5E7EB), width: 0.9),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFE5E7EB), width: 1.9),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFE5E7EB), width: 0.9),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(8),
                    CustomTextField(
                      textFieldLabel: "Password",
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
                        Navigator.pushNamed(context, VerifyOTP.id);
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
                    CustomButton(
                      color: Colors.white,
                      borderSideColor: primaryColor,
                      width: double.infinity,
                      height: 45,
                      onPressed: () {},
                      radius: 10,
                      label: Text(
                        "Sign In with Apple",
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                    const Gap(16),
                    Text(
                      "Forgot Password?",
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )
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
