import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:paysenta/ui/pages/navigator/bottom_navigator_bar.dart';

class TransferSuccessful extends StatelessWidget {
  const TransferSuccessful({super.key});
  static String id = "transfer-success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.fill,
                repeat: ImageRepeat.noRepeat)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Gap(200),
              Center(
                child: Image.asset(
                  'assets/successful-transfer.png',
                  height: 150,
                  width: 150,
                ),
              ),
              const Gap(30),
              const Center(
                child: Text('Transfer Successful',
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: -0.2)),
              ),
              const Gap(70),
              Center(
                child: Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Amount: ',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(8, 173, 173, 1),
                              letterSpacing: 0.3)),
                      TextSpan(
                          text: ' Ghs 930',
                          style: TextStyle(
                              fontSize: 32.0,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(8, 173, 173, 1),
                              letterSpacing: 0.3))
                    ])),
                  ),
                ),
              ),
              const Gap(100),
              Container(
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  width: 350.0,
                  height: 56.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MainPageNavigator.id);
                    },
                    splashColor: Colors.white,
                    child: const Text(
                      'Back to Home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(8, 173, 173, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.30,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
