import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Style.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({super.key});

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withOpacity(.2)),
                borderRadius: BorderRadius.circular(20)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  CupertinoIcons.minus,
                  size: 18,
                  color: Colors.white,
                ),
                Text(
                  '2',
                  style: Style.style16,
                ),
                Icon(
                  CupertinoIcons.add,
                  size: 18,
                  color: Colors.white,
                )
              ],
            ),
          ),
          const Text(
            "\$30",
            style: Style.style22,
          ),
        ],
      ),
    );
  }
}
