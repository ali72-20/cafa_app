import 'package:cafa_app/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/Style.dart';

class GetStartedButton extends StatefulWidget {
  const GetStartedButton({super.key});

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0,1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceIn));

    _controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: InkWell(
        splashColor: Colors.black,
        onTap: (){
          GoRouter.of(context).push(AppRouter.homeScreen);
        },
        child: Ink(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
            decoration:  BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10)
            ),
            child: const Text("Get Started", style: Style.style22,),
          ),
        ),
      ),
    );
  }
}
