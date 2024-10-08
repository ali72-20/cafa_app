import 'package:flutter/material.dart';
import '../../../../core/Style.dart';
import '../../../../core/colors.dart';

class BottomRowButtons extends StatefulWidget {
  const BottomRowButtons({super.key});

  @override
  State<BottomRowButtons> createState() => _BottomRowButtonsState();
}

class _BottomRowButtonsState extends State<BottomRowButtons> {
  Color favouriteIconColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: searchViewColor,
              boxShadow: const [
                BoxShadow(
                    color: containerColor,
                    spreadRadius: 1,
                    blurRadius: 8),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Add to Cart",
                style: Style.style20
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: selectedColor,
              boxShadow: const [
                BoxShadow(
                  color: selectedColor,
                  spreadRadius: 1,
                )
              ],
            ),
            child: InkWell(
              onTap: (){
                setState(() {
                  favouriteIconColor = favouriteIconColor == Colors.white ? Colors.red : Colors.white;
                });
              },
              child:  Icon(
                Icons.favorite,
                size: 22,
                color: favouriteIconColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
