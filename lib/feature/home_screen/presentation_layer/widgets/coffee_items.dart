import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeItems extends StatelessWidget {
  CoffeeItems({super.key});

  List img = [
    'Latte',
    'Espresso',
    'Black Coffee',
    'Cold Coffee',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for(int i = 0; i < img.length; ++i)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin:  const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff212325),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8
                )
              ]
            ),
          ),

      ],
    );
  }
}
