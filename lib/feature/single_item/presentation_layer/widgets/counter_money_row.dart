import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Style.dart';

class CounterMoneyRow extends StatefulWidget {
  const CounterMoneyRow({super.key});

  @override
  State<CounterMoneyRow> createState() => _CounterMoneyRowState();
}

class _CounterMoneyRowState extends State<CounterMoneyRow> {
  int itemCounter = 0;

  @override
  Widget build(BuildContext context) {
    return   Row(
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
                  color: Colors.white.withOpacity(itemCounter == 0? .3 : 1),
                ),
              ),
              AnimatedFlipCounter(
                value: itemCounter,
                textStyle: Style.style16
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
        AnimatedFlipCounter(
          duration: const Duration(microseconds: 300),
          value:  itemCounter * 30,
          textStyle: Style.style18
        ),
      ],
    );
  }
}
