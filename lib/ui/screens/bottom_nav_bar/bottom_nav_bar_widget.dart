import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/bottom_nav_bar/bottom_nav_bar_view_model.dart';

enum NavBarItemType { STORE, CART, ORDERS }

class NavBarItemProp {
  final NavBarItemType type;
  final BottomNavigationBarItem item;

  NavBarItemProp({required this.type, required this.item});
}

class BottomNavBarWidget extends StatelessWidget {
  final BottomNavBarViewModel viewModel;

  const BottomNavBarWidget({Key? key, required this.viewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xff14141d),
      unselectedItemColor: Colors.white70,
      selectedItemColor: Colors.white,
      iconSize: 26,

      onTap: viewModel.changeTab,
      currentIndex: viewModel.currentNavBarItemType.index,
      items: [
        viewModel.navBarItemProps[0].item,
        viewModel.navBarItemProps[1].item,
        viewModel.navBarItemProps[2].item,
      ],
    );
  }
}
