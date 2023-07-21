import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:csc_picker/csc_picker.dart';

import '../../shared/constants.dart';

class CountryResidence extends StatefulWidget {
  const CountryResidence({Key? key}) : super(key: key);
  static const String id = "Country of residence id";
  @override
  State<CountryResidence> createState() => _CountryResidenceState();
}

class _CountryResidenceState extends State<CountryResidence> {
  String? countryValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: primaryColor),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(45),
            Row(
              children: [
                const Gap(15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xFF374151))),
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
                      Gap(15),
                      FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'Country of Residence',
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
                      Gap(15),
                      FittedBox(
                        child: Text(
                          'Please select all the countries that',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9CA3AF),
                              letterSpacing: 0.38),
                        ),
                      ),
                    ],
                  ),
                  Gap(5),
                  Row(
                    children: [
                      Gap(15),
                      FittedBox(
                        child: Text(
                          'you’re a tax resident in',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF9CA3AF),
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
                  const Gap(15.0),
                  SizedBox(
                    width: 350,
                    child: CSCPicker(
                      showCities: false,
                      showStates: false,
                      flagState: CountryFlag.ENABLE,
                      dropdownDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xFF1D2634)),
                      //disabledDropdownDecoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black) ,
                      defaultCountry: CscCountry.Ghana,
                      countryDropdownLabel: countryValue != null
                          ? '  $countryValue'
                          : '  Choose country',
                      countrySearchPlaceholder: "Country",
                      countryFilter: const [
                        CscCountry.Ghana,
                        CscCountry.Nigeria,
                        CscCountry.United_Kingdom,
                        CscCountry.United_States
                      ],
                      selectedItemStyle: const TextStyle(
                        color: Colors.white,
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
            const Gap(450),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
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
                          Navigator.pushNamed(context, CountryResidence.id);
                        },
                        splashColor: Colors.white,
                        child: const Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF1D3A6F),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ))),
            )
          ],
        ),
      ),
    ));
  }
}
