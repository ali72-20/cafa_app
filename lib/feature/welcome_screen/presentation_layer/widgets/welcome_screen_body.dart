import 'package:cafa_app/core/Style.dart';
import 'package:cafa_app/core/colors.dart';
import 'package:cafa_app/core/utilites/assets.dart';
import 'package:cafa_app/feature/welcome_screen/presentation_layer/widgets/app_logo.dart';
import 'package:cafa_app/feature/welcome_screen/presentation_layer/widgets/get_started_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 40),
      decoration: const BoxDecoration(
        color: splashBackGround,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppLogo(),
          Lottie.asset(splashImage),
          Text(
            "Feeling Low? Take a Sip of Coffee",
            style: Style.style18,
          ),
          const SizedBox(height: 80,),
          const GetStartedButton(),
        ],
      ),
    );
  }
}
