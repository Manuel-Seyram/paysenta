import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paysenta/ui/pages/card/home_card_splash.dart';

class ProofRecidency extends StatefulWidget {
  const ProofRecidency({super.key});
  static const String id = "proof of residence id";

  @override
  State<ProofRecidency> createState() => _ProofRecidencyState();
}

class _ProofRecidencyState extends State<ProofRecidency> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    String? countryValue = arguments?['countryValue'] as String?;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.fill,
                repeat: ImageRepeat.noRepeat)),
        child: Column(
          children: [
            const Gap(45),
            Row(
              children: [
                const Gap(30),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.white)),
                      child: FittedBox(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(Icons.arrow_back_ios_new_sharp,
                                  color: Colors.white),
                            )),
                      )),
                )
              ],
            ),
            const Gap(20),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 80.0,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Gap(30),
                      FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Proof of Residency',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.20,
                                color: Colors.white),
                          )),
                    ],
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Gap(30),
                      FittedBox(
                        child: Text(
                          'Prove you live in Ghana',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              letterSpacing: 0.38),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(30.0),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Gap(30.0),
                  SizedBox(
                    width: 350,
                    child: CSCPicker(
                      showCities: false,
                      showStates: false,
                      flagState: CountryFlag.ENABLE,
                      dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      //disabledDropdownDecoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black) ,
                      //defaultCountry: CscCountry.Ghana,
                      countryDropdownLabel: countryValue != null
                          ? '  $countryValue'
                          : '  Choose country',
                      countrySearchPlaceholder: "country",
                      countryFilter: const [
                        CscCountry.Ghana,
                        CscCountry.Nigeria,
                        CscCountry.United_Kingdom,
                        CscCountry.United_States
                      ],
                      selectedItemStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      dropdownItemStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      onCountryChanged: (value) {
                        setState(() {
                          ///store value in country variable
                          countryValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Gap(40),
            const Row(
              children: [
                Gap(30),
                Text('Method of Verification',
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        letterSpacing: 0.38)),
              ],
            ),
            const Gap(20),
            Row(
              children: [
                const Gap(30),
                Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(8, 173, 173, 1),
                  ),
                  child: Column(
                    children: [
                      const Gap(20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, CardSplash.id);
                        },
                        child: SizedBox(
                          child: Row(
                            children: [
                              const Gap(30),
                              Image.asset(
                                'assets/passport.png',
                                height: 40,
                                width: 40,
                              ),
                              const Gap(20),
                              const Text('Passport',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      letterSpacing: 0.30)),
                              const Gap(140),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Gap(20),
                      const Divider(
                        color: Colors.white,
                        thickness: 1.5,
                        indent: 30.0,
                        endIndent: 30.0,
                      ),
                      const Gap(10),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          child: Row(
                            children: [
                              const Gap(30),
                              Image.asset(
                                'assets/nid.png',
                                height: 40,
                                width: 40,
                              ),
                              const Gap(20),
                              const Text('National Identity Card',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      letterSpacing: 0.30)),
                              const Gap(40),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Gap(20),
                      const Divider(
                        color: Colors.white,
                        thickness: 1.5,
                        indent: 30.0,
                        endIndent: 30.0,
                      ),
                      const Gap(10),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          child: Row(
                            children: [
                              const Gap(30),
                              Image.asset(
                                'assets/digitaldocument.png',
                                height: 40,
                                width: 40,
                              ),
                              const Gap(20),
                              const Text('Digital Document',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      letterSpacing: 0.30)),
                              const Gap(70),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Gap(20),
                      const Divider(
                        color: Colors.white,
                        thickness: 1.5,
                        indent: 30.0,
                        endIndent: 30.0,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
