import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/utilites/assets.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 1,
            )
          ]
      ),
      child: AlertDialog(
        backgroundColor: Colors.white,
        actions: [Lottie.asset(loading)],
      ),
    );
  }
}
