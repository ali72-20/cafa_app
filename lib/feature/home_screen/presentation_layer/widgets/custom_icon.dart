import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {},
      child: Icon(
        icon,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}
