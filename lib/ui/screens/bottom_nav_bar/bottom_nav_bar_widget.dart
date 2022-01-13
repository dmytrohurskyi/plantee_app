import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/bottom_nav_bar/bottom_nav_bar_view_model.dart';

enum NavBarItemType { STORE, CART, ORDERS }

extension NavBarItemTypeExtension on NavBarItemType {
  String get label {
    switch (this) {
      case NavBarItemType.STORE:
        return 'Store';
      case NavBarItemType.CART:
        return 'Cart';
      case NavBarItemType.ORDERS:
        return 'Orders';
    }
  }

  Widget get iconWidget {
    switch (this) {
      case NavBarItemType.STORE:
        return const Icon(Icons.storefront_outlined);
      case NavBarItemType.CART:
        return const Icon(Icons.shopping_cart_outlined);
      case NavBarItemType.ORDERS:
        return const Icon(Icons.list_alt_outlined);
    }
  }
}

class NavBarItemProp {
  final NavBarItemType type;
  final BottomNavigationBarItem item;
  final Function() onClick;

  NavBarItemProp(
      {required this.type, required this.item, required this.onClick});
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
      onTap: (index) => viewModel.navBarItemProps[index].onClick(),
      currentIndex: viewModel.currentNavBarItemType.index,
      items: [
        viewModel.navBarItemProps[0].item,
        viewModel.navBarItemProps[1].item,
        viewModel.navBarItemProps[2].item,
      ],
    );
  }
}
