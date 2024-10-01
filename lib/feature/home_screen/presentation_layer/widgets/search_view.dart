import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: 60,
      alignment: Alignment.center,
      decoration:  BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(10)
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Find Your coffee",
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(.5),
            ),
            prefixIcon:  Icon(Icons.search,size: 30,color: Colors.white.withOpacity(.5),)
        ),
      ),
    );
  }
}
