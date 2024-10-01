import 'package:cafa_app/core/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/Style.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.homeScreen);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        decoration:  BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(10)
        ),
        child: const Text("Get Started", style: Style.style22,),
      ),
    );
  }
}
