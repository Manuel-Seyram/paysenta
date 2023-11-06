import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../card/home_card_splash.dart';

class Passport extends StatelessWidget {
  const Passport({super.key});
  static String id = " Passport";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(65),
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
                              'Passport',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: -0.20,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                    Gap(5),
                    Row(
                      children: [
                        Gap(30),
                        FittedBox(
                          child: Text(
                            'Fill the form below',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                letterSpacing: 0.38),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text('Full name',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                  ],
                ),
              ),
              const Gap(10),
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
                    keyboardType: TextInputType.name,
                    obscureText: true,
                    //controller: _confirmPassword,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.30),
                    decoration: const InputDecoration(
                        hintText: 'john doe',
                        contentPadding: EdgeInsets.all(10.0),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text('Nationality',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                  ],
                ),
              ),
              const Gap(10),
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
                    keyboardType: TextInputType.name,
                    obscureText: true,
                    //controller: _confirmPassword,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.30),
                    decoration: const InputDecoration(
                        hintText: 'enter nationality',
                        contentPadding: EdgeInsets.all(10.0),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Row(
                            children: [
                              Text('Date of birth',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(8, 173, 173, 1),
                                  ),
                                )),
                            width: 170.0,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              //controller: _confirmPassword,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  hintText: 'dd/mm/yyyy',
                                  contentPadding: EdgeInsets.all(10.0),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 165),
                          child: Row(
                            children: [
                              Text('Sex',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(8, 173, 173, 1),
                                  ),
                                )),
                            width: 170.0,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              //controller: _confirmPassword,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  hintText: 'Gender',
                                  contentPadding: EdgeInsets.all(10.0),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text('Place of birth',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            letterSpacing: 0.3)),
                  ],
                ),
              ),
              const Gap(10),
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
                    keyboardType: TextInputType.name,
                    obscureText: true,
                    //controller: _confirmPassword,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.30),
                    decoration: const InputDecoration(
                        hintText: 'Accra',
                        contentPadding: EdgeInsets.all(10.0),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 45),
                          child: Row(
                            children: [
                              Text('Passport type',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(8, 173, 173, 1),
                                  ),
                                )),
                            width: 168.2,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              //controller: _confirmPassword,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  hintText: 'choose',
                                  contentPadding: EdgeInsets.all(10.0),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 80),
                          child: Row(
                            children: [
                              Text('Passport number',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(8, 173, 173, 1),
                                  ),
                                )),
                            width: 168.2,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              //controller: _confirmPassword,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  hintText: 'G1234567',
                                  contentPadding: EdgeInsets.all(10.0),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 75),
                          child: Row(
                            children: [
                              Text('Authority',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(8, 173, 173, 1),
                                  ),
                                )),
                            width: 168.2,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              //controller: _confirmPassword,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  hintText: 'Passport Office',
                                  contentPadding: EdgeInsets.all(10.0),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 110),
                          child: Row(
                            children: [
                              Text('Country code',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(8, 173, 173, 1),
                                  ),
                                )),
                            width: 168.2,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              //controller: _confirmPassword,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  hintText: 'GHA',
                                  contentPadding: EdgeInsets.all(10.0),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              Text('Place of Issuance',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(8, 173, 173, 1),
                                  ),
                                )),
                            width: 167.0,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              //controller: _confirmPassword,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  hintText: 'Accra',
                                  contentPadding: EdgeInsets.all(10.0),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 115),
                          child: Row(
                            children: [
                              Text('Expiry date',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      letterSpacing: 0.3)),
                            ],
                          ),
                        ),
                        const Gap(10),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Container(
                            decoration: ShapeDecoration(
                                color: Colors.grey.shade100,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color.fromRGBO(8, 173, 173, 1),
                                  ),
                                )),
                            width: 167.0,
                            height: 56.0,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              obscureText: true,
                              //controller: _confirmPassword,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.30),
                              decoration: const InputDecoration(
                                  hintText: 'dd/mm/yyyy',
                                  contentPadding: EdgeInsets.all(10.0),
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Gap(40),
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
                          Navigator.pushNamed(
                            context,
                            CardSplash.id,
                          );
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
              const Gap(20)
            ],
          ),
        ),
      ),
    );
  }
}
