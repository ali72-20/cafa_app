import 'package:cafa_app/core/Style.dart';
import 'package:cafa_app/feature/single_item/presentation_layer/widgets/bottom_row_buttons.dart';
import 'package:cafa_app/feature/single_item/presentation_layer/widgets/custom_arrow_back.dart';
import 'package:cafa_app/feature/single_item/presentation_layer/widgets/item_counter.dart';
import 'package:cafa_app/feature/single_item/presentation_layer/widgets/single_item_details.dart';
import 'package:flutter/material.dart';

class SingleItemScreen extends StatelessWidget {
  final int img;
  final String itemName;

  const SingleItemScreen(
      {super.key, required this.img, required this.itemName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomArrowBack(),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Image.asset(
                    "lib/core/utilites/Images/img$img.png",
                    width: MediaQuery.sizeOf(context).width / 1.5,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                SingleItemDetails(itemName: itemName,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
