import 'package:flutter/material.dart';
import 'package:paysenta/ui/pages/home/home.dart';
import 'package:paysenta/ui/pages/authentication/login.dart';
import 'package:paysenta/ui/pages/authentication/reasons.dart';
import 'package:paysenta/ui/pages/authentication/register.dart';
import 'package:paysenta/ui/pages/authentication/set_password.dart';
import 'package:paysenta/ui/pages/authentication/verify_otp.dart';
import 'package:paysenta/ui/pages/card/card_1.dart';
import 'package:paysenta/ui/pages/navigator/bottom_navigator_bar.dart';
import 'package:paysenta/ui/pages/onboarding/onboarding.dart';
import 'package:paysenta/ui/pages/onboarding/splash.dart';
import 'package:paysenta/ui/pages/profile/widgets/account%20info/account_info.dart';
import 'package:paysenta/ui/pages/profile/widgets/faq/faq.dart';
import 'package:paysenta/ui/pages/profile/widgets/general%20settings/general_settings.dart';
import 'package:paysenta/ui/pages/transfer/select_transfer.dart';

import 'ui/pages/Deposit/top_up.dart';
import 'ui/pages/Deposit/top_up_confirmation.dart';
import 'ui/pages/authentication/country_residence.dart';
import 'ui/pages/authentication/national_id.dart';
import 'ui/pages/authentication/passport.dart';
import 'ui/pages/authentication/proof_residence.dart';
import 'ui/pages/card/card_2.dart';
import 'ui/pages/card/card_3.dart';
import 'ui/pages/card/home_card_splash.dart';
import 'ui/pages/card/select_card.dart';
import 'ui/pages/my cards/my_card.dart';
import 'ui/pages/profile/widgets/account info/edit.dart';
import 'ui/pages/profile/widgets/password recovery/create_new_password.dart';
import 'ui/pages/profile/widgets/password recovery/password_recovery.dart';
import 'ui/pages/profile/widgets/password recovery/verify_identity.dart';
import 'ui/pages/profile/widgets/referral/referral.dart';
import 'ui/pages/transactions/transactions.dart';
import 'ui/pages/transfer/send_money.dart';
import 'ui/pages/transfer/send_money_bank.dart';
import 'ui/pages/transfer/transfer.dart';
import 'ui/pages/transfer/widget/money_sent_splash.dart';
import 'ui/pages/withdraw/withdraw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
      routes: {
        Splash.id: (context) => const Splash(),
        Onboarding.id: (context) => const Onboarding(),
        Login.id: (context) => const Login(),
        Register.id: (context) => const Register(),
        CountryResidence.id: (context) => const CountryResidence(),
        NationalId.id: (context) => const NationalId(),
        Passport.id: (context) => const Passport(),
        VerifyOTP.id: (context) => const VerifyOTP(),
        SetPassword.id: (context) => const SetPassword(),
        MainPageNavigator.id: (context) => const MainPageNavigator(),
        Reasons.id: (context) => const Reasons(),
        ProofRecidency.id: (context) => const ProofRecidency(),
        CardSplash.id: (context) => const CardSplash(),
        SelectCard.id: (context) => const SelectCard(),
        AddCard1.id: (context) => const AddCard1(),
        AddCard2.id: (context) => const AddCard2(),
        AddCard3.id: (context) => const AddCard3(),
        Home.id: (context) => const Home(),
        Transfers.id: (context) => const Transfers(),
        SendMoney.id: (context) => const SendMoney(),
        TransactionsPage.id: (context) => const TransactionsPage(),
        SelectTransferType.id: (context) => const SelectTransferType(),
        SendMoneyBank.id: (context) => const SendMoneyBank(),
        TransferSuccessful.id: (context) => const TransferSuccessful(),
        TopUp.id: (context) => const TopUp(),
        TopUpConfirmation.id: (context) => const TopUpConfirmation(),
        Withdraw.id: (context) => const Withdraw(),
        MyCards.id: (context) => const MyCards(),
        Referral.id: (context) => const Referral(),
        AccountInfo.id: (context) => const AccountInfo(),
        FAQ.id: (context) => const FAQ(),
        GeneralSettings.id: (context) => const GeneralSettings(),
        EditProfile.id: (context) => const EditProfile(),
        PasswordRecovery.id: (context) => const PasswordRecovery(),
        VerifyIdentity.id: (context) => const VerifyIdentity(),
        CreateNewPassword.id: (context) => const CreateNewPassword(),
      },
    );
  }
}
