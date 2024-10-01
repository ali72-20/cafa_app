
import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration:  BoxDecoration(
        color: containerColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.4),
            spreadRadius: 1,
            blurRadius: 8
          )
        ]
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home, color: selectedColor, size: 30,),
          Icon(Icons.favorite, color: Colors.white, size: 30,),
          Icon(Icons.notifications, color: Colors.white, size: 30,),
          Icon(Icons.person, color: Colors.white, size: 30,),
        ],
      ),
    );
  }
}
