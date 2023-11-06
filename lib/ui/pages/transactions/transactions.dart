import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paysenta/ui/shared/constants.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({Key? key}) : super(key: key);
  static String id = "transactions";

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(60),
              const Center(
                child: Text('All Transactions',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(8, 173, 173, 1),
                        letterSpacing: 0.3)),
              ),
              const Gap(20),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: listTileWidgets.length,
                  itemBuilder: (context, index) {
                    return listTileWidgets[index];
                  },
                ),
              )
            ],
          ),
        ),
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
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "-GHS380.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.red,
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
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "GHS5000.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.green,
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
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "-GHS399.99",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.red,
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
          color: Colors.redAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.hotel,
          color: Colors.redAccent,
        ),
      ),
      title: Text(
        "Hostel",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "-GHS8549.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.red,
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
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "GHS500.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.green,
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
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "-GHS380.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.red,
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
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "GHS5000.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.green,
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
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "-GHS399.99",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.red,
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
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "2 June 2020",
        style: GoogleFonts.nunito(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      trailing: Text(
        "GHS500.00",
        style: GoogleFonts.nunito(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.green,
        ),
      ),
    ),
  ),
  const Gap(120)
];
