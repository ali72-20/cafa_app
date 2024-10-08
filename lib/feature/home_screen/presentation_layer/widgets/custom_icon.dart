import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Icon(
        icon,
        color: Colors.white.withOpacity(.5),
        size: 35,
    );
  }
}
