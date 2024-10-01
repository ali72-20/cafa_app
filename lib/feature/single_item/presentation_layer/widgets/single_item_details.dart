import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Style.dart';
import 'bottom_row_buttons.dart';
import 'item_counter.dart';

class SingleItemDetails extends StatelessWidget {
  final String itemName;
  const SingleItemDetails({super.key, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return      Padding(
      padding: const EdgeInsets.only(left: 25, right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BEST COFFEE",
            style: Style.style18.copyWith(
              letterSpacing: 3,
              color: Colors.white.withOpacity(.4),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            itemName,
            style: Style.style30,
          ),
          const SizedBox(
            height: 25,
          ),
          const ItemCounter(),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Coffee is a rich, aromatic beverage made from roasted coffee beans, enjoyed worldwide for its stimulating effects due to caffeine. Its diverse flavors and brewing methods make it a beloved part of daily routines",
            style: Style.style14
                .copyWith(color: Colors.white.withOpacity(.4)),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                "Volume: ",
                style: Style.style16,
              ),
              Text(
                "60 ml",
                style: Style.style16,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const BottomRowButtons()
        ],
      ),
    );
  }
}
