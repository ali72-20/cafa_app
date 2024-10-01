import 'package:cafa_app/core/colors.dart';
import 'package:cafa_app/core/utilites/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 40),
      decoration:  const BoxDecoration(
        color: splashBackGround,
      ),
      child: Lottie.asset(splashImage),
    );
  }
}
