import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../utils/countries.dart';
import '../constants.dart';

class CustomCountryPicker extends StatefulWidget {
  const CustomCountryPicker({
    Key? key,
    required this.countyCode,
  }) : super(key: key);
  final String countyCode;

  @override
  State<CustomCountryPicker> createState() => _CustomCountryPickerState();
}

class _CustomCountryPickerState extends State<CustomCountryPicker> {
  TextEditingController controller = TextEditingController();

  List countries() {
    if (controller.text.isEmpty) {
      return Countries().countries;
    } else {
      return Countries()
          .countries
          .where((element) =>
              element['code']
                  .toLowerCase()
                  .contains(controller.text.toLowerCase()) ||
              element['name']
                  .toLowerCase()
                  .contains(controller.text.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext dialogContext) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            color: whiteColor),
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: const BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, widget.countyCode);
                      },
                      child: const Icon(
                        IconlyLight.arrow_left_2,
                        color: blackColor,
                      ),
                    ),
                    Text(
                      "Select Country",
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context, widget.countyCode);
                      },
                      child: Text(
                        "Done",
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                controller: ModalScrollController.of(context),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 40.0,
                ),
                children: countries().map((country) {
                  return Column(
                    children: [
                      ListTile(
                        // textColor: Colors.grey[400],
                        onTap: () {
                          Navigator.pop(dialogContext, country['code']);
                        },
                        minVerticalPadding: 0,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Image.asset(
                            country['flag'],
                            height: 26,
                            width: 26,
                            fit: BoxFit.fill,
                            colorBlendMode: BlendMode.lighten,
                          ),
                        ),
                        subtitle: Text(
                          country['region'],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        title: Text(country['name']),
                        trailing: Text(country['code']),
                      ),
                      const Divider()
                    ],
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
