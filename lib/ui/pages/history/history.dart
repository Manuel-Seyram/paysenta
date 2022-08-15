import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/shared/constants.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverAppBar(
            toolbarHeight: 60,
            automaticallyImplyLeading: false,
            backgroundColor: primaryColor,
            leadingWidth: 100,
            title: Text(
              "History",
              style: GoogleFonts.manrope(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: whiteColor,
              ),
            ),
            actions: [
              GestureDetector(
                child: const Icon(
                  Icons.search,
                  color: whiteColor,
                ),
              ),
              const Gap(20),
            ],
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ListTile(
                tileColor: whiteColor.withOpacity(0),
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.bolt,
                    color: Colors.amber,
                  ),
                ),
                title: Text(
                  "Electricity",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  ),
                ),
                subtitle: Text(
                  "2 June 2020",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade800,
                  ),
                ),
                trailing: Text(
                  "-GHS 380.00",
                  style: GoogleFonts.nunito(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: blackColor,
                  ),
                ),
              );
            }, childCount: 6),
          ),
        ],
      ),
    );
  }
}
