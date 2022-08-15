import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../utils/countries.dart';
import '../constants.dart';

class CustomCountryPicker extends StatefulWidget {
  String countyCode;
  CustomCountryPicker({
    Key? key,
    required this.countyCode,
  }) : super(key: key);

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
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            color: whiteColor),
        child: CupertinoPageScaffold(
          backgroundColor: whiteColor.withOpacity(0),
          child: Column(
            children: [
              Container(
                height: 53,
                decoration: const BoxDecoration(
                  color: primaryColor,
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
                          color: whiteColor,
                        ),
                      ),
                      Text(
                        "Select Country", // style: bodyRG
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context, widget.countyCode);
                        },
                        child: Text(
                          "Done", // style: bodyRG
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 20,
              //   ),
              //   child: CustomTextField(
              //     textFieldLabel: "",
              //     isReadOnly: false,
              //     textController: controller,
              //     onChanged: (value) {
              //       setState(() {});
              //     },
              //     hintText: '',
              //     prefixIcon: Icon(CupertinoIcons.search),
              //   ),
              // ),
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
                    if (country == null) {
                      return const Text('Country not found');
                    }
                    return Column(
                      children: [
                        ListTile(
                          textColor: (country['name'] == 'Ghana' ||
                                  country['name'] == 'Nigeria')
                              ? null
                              : Colors.grey[400],
                          onTap: () {
                            if (country['name'] == 'Ghana' ||
                                country['name'] == 'Nigeria') {
                              Navigator.pop(dialogContext, country['code']);
                            } else {
                              ScaffoldMessenger.of(dialogContext)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    'Express Instructor is currently only available for Ghana and Nigeria.'),
                                duration: Duration(seconds: 1),
                              ));
                            }
                          },
                          minVerticalPadding: 0,
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.asset(
                              country['flag'],
                              height: 26,
                              width: 26,
                              fit: BoxFit.fill,
                              color: (country['name'] == 'Ghana' ||
                                      country['name'] == 'Nigeria')
                                  ? null
                                  : Colors.grey.withOpacity(1),
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
      ),
    );
  }
}
