import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'create_new_password.dart';

class VerifyIdentity extends StatelessWidget {
  const VerifyIdentity({super.key});
  static String id = "verifyIdentity";

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Map<String, dynamic>? arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    // ignore: no_leading_underscores_for_local_identifiers
    String? _email = arguments?['email'] as String?;

    String maskedEmail = maskEmail(_email);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(60),
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
                            border: Border.all(
                              color: const Color.fromRGBO(8, 173, 173, 1),
                            )),
                        child: FittedBox(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.arrow_back_ios_new_sharp,
                                  color: Color.fromRGBO(8, 173, 173, 1),
                                ),
                              )),
                        )),
                  ),
                  const Gap(50),
                  const Text('Change Password',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(8, 173, 173, 1),
                          letterSpacing: 0.3))
                ],
              ),
              const Gap(40),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text('Verify your identity',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                  ],
                ),
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Where would you like Paysenta to send your security code?',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      letterSpacing: 0.3),
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textWidthBasis: TextWidthBasis.parent,
                ),
              ),
              const Gap(40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: ShapeDecoration(
                      color: Colors.grey.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Color.fromRGBO(8, 173, 173, 1),
                        ),
                      )),
                  width: 350.0,
                  height: 56.0,
                  child: TextFormField(
                    //keyboardType: TextInputType.name,
                    readOnly: true,
                    controller: TextEditingController(text: maskedEmail),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.30),
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.30,
                        ),
                        prefixIcon: Icon(Icons.check_circle),
                        prefixIconColor: Color.fromRGBO(8, 173, 173, 1),
                        suffixIcon: Icon(Icons.mail),
                        suffixIconColor: Colors.grey,
                        contentPadding: EdgeInsets.all(14.0),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              const Gap(350),
              Center(
                  child: Container(
                      decoration: ShapeDecoration(
                          color: const Color.fromRGBO(8, 173, 173, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      width: 350.0,
                      height: 56.0,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CreateNewPassword.id);
                        },
                        splashColor: const Color.fromRGBO(8, 173, 173, 1),
                        child: const Text(
                          'Continue',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.30,
                          ),
                        ),
                      ))),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}

String maskEmail(String? email) {
  if (email == null || email.isEmpty) {
    return ''; // Handle empty or null email
  }

  // Split the email address into username and domain
  List<String> parts = email.split('@');
  if (parts.length != 2) {
    return email; // Invalid email format, return as is
  }

  String username = parts[0];
  String domain = parts[1];

  // Mask part of the username with asterisks
  String maskedUsername = '${username.substring(0, 2)}********';

  // Create the masked email in the desired format
  return '$maskedUsername@$domain';
}
