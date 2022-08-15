import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/shared/constants.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverAppBar(
            toolbarHeight: 60,
            floating: true,
            automaticallyImplyLeading: false,
            backgroundColor: primaryColor,
            leadingWidth: 100,
            title: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "History",
                style: GoogleFonts.manrope(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: whiteColor,
                ),
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
              return listTileWidgets[index];
            }, childCount: listTileWidgets.length),
          ),
        ],
      ),
    );
  }
}

List<Widget> listTileWidgets = [
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.2),
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
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "-GHS380.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.add_circle,
          color: primaryColor,
        ),
      ),
      title: Text(
        "Top Up",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "GHS5000.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.greenAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.wifi_2_bar,
          color: Colors.greenAccent,
        ),
      ),
      title: Text(
        "Internet",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "-GHS399.99",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.amber.shade700.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.videogame_asset_sharp,
          color: Colors.amber.shade700,
        ),
      ),
      title: Text(
        "Games",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "-GHS450.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.add_circle,
          color: primaryColor,
        ),
      ),
      title: Text(
        "Top Up",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "GHS500.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.ondemand_video_rounded,
          color: primaryColor,
        ),
      ),
      title: Text(
        "Movies",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "1 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "-GHS80.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.2),
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
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "-GHS380.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.add_circle,
          color: primaryColor,
        ),
      ),
      title: Text(
        "Top Up",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "GHS5000.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.greenAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.wifi_2_bar,
          color: Colors.greenAccent,
        ),
      ),
      title: Text(
        "Internet",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "-GHS399.99",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.amber.shade700.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.videogame_asset_sharp,
          color: Colors.amber.shade700,
        ),
      ),
      title: Text(
        "Games",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "-GHS450.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.add_circle,
          color: primaryColor,
        ),
      ),
      title: Text(
        "Top Up",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "GHS500.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 16.0),
    child: ListTile(
      tileColor: whiteColor.withOpacity(0),
      leading: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.ondemand_video_rounded,
          color: primaryColor,
        ),
      ),
      title: Text(
        "Movies",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
      subtitle: Text(
        "1 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800,
        ),
      ),
      trailing: Text(
        "-GHS80.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: blackColor,
        ),
      ),
    ),
  ),
  const Gap(120)
];
