
import 'package:cafa_app/core/colors.dart';
import 'package:cafa_app/feature/welcome_screen/presentation_layer/widgets/app_logo.dart';
import 'package:cafa_app/feature/welcome_screen/presentation_layer/widgets/get_started_button.dart';
import 'package:cafa_app/feature/welcome_screen/presentation_layer/widgets/slogan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utilites/assets.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 40),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppLogo(),
          Lottie.asset(splashImage),
          const AppSlogan(),
          const SizedBox(height: 70,),
          const GetStartedButton(),
        ],
      ),
    );
  }
}
