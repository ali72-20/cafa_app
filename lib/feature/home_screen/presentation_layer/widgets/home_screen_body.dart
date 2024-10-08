import 'package:cafa_app/core/Style.dart';
import 'package:cafa_app/feature/home_screen/presentation_layer/view_model/ViewModel.dart';
import 'package:cafa_app/feature/home_screen/presentation_layer/widgets/custom_icon.dart';
import 'package:cafa_app/feature/home_screen/presentation_layer/widgets/home_bottom_navigation_bar.dart';
import 'package:cafa_app/feature/home_screen/presentation_layer/widgets/home_tab_bar.dart';
import 'package:cafa_app/feature/home_screen/presentation_layer/widgets/search_view.dart';
import 'package:flutter/material.dart';

import '../../../cart_screen/presentation_layer/cart_screen.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with SingleTickerProviderStateMixin {
  ViewModel viewModel = ViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomIcon(
                        icon: Icons.sort_rounded,
                      ),
                      InkWell(
                          onTap: (){
                           viewModel.navigateToCartScreen(context);
                          },
                          child: const CustomIcon(icon: Icons.shopping_cart)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: const Text(
                      "It's a Great Day for Coffee",
                      style: Style.style22,
                    ),
                  ),
                ),
                const SearchView(),
                const HomeTabBar(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const HomeBottomNavigationBar());
  }
}
