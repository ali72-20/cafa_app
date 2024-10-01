import 'package:flutter/cupertino.dart';

import '../../../../core/Style.dart';

class AppSlogan extends StatefulWidget {
  const AppSlogan({super.key});

  @override
  State<AppSlogan> createState() => _AppSloganState();
}

class _AppSloganState extends State<AppSlogan>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);

    _offsetAnimation = Tween<Offset>(
            begin: const Offset(0.0, 1.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.slowMiddle));

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
      child: Text(
        "Feeling Low? Take a Sip of Coffee",
        style: Style.style18,
      ),
    );
  }
}
