import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'counter_money_row.dart';

class ItemCounter extends StatelessWidget {
  const ItemCounter({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
       child:  const CounterMoneyRow(),
    );
  }
}
