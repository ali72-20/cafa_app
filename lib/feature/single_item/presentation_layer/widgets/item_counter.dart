import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Style.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({super.key});

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int itemCounter = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: 120,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white.withOpacity(.2)),
                borderRadius: BorderRadius.circular(20)),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 InkWell(
                  onTap: (){
                    setState(() {
                      if(itemCounter > 0) itemCounter--;
                    });
                  },
                  child:  Icon(
                    CupertinoIcons.minus,
                    size: 18,
                    color: Colors.white.withOpacity(itemCounter == 0? .5 : 1),
                  ),
                ),
                Text(
                  '$itemCounter',
                  style: Style.style16,
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      itemCounter++;
                    });
                  },
                  child: const Icon(
                    CupertinoIcons.add,
                    size: 18,
                    color: Colors.white,
                  ),
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
