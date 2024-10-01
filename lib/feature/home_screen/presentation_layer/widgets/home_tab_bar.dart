import 'package:cafa_app/feature/home_screen/presentation_layer/widgets/coffee_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/Style.dart';
import '../../../../core/colors.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key});

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }
  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          isScrollable: true,
          unselectedLabelColor: Colors.white.withOpacity(.5),
          labelColor: tabColor,
          tabAlignment: TabAlignment.start,
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                  width: 3,
                  color: tabColor
              )
          ),
          labelStyle: Style.style18.copyWith(fontWeight: FontWeight.w500),
          labelPadding: const EdgeInsets.symmetric(horizontal: 20 ),
          tabs: const [
            Tab(
              text: "Hot Coffee",
            ),
            Tab(
              text: "Cold Coffee",
            ),
            Tab(
              text: "Cappuccino",
            ),
            Tab(
              text: "Americano",
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Center(
          child: [
           CoffeeItems(),
           CoffeeItems(),
           CoffeeItems(),
           CoffeeItems(),
          ][_tabController.index],
        )
      ],
    );
  }
}
