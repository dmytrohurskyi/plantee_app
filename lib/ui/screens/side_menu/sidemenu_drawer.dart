import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/side_menu/widgets/drawer_item_widget.dart';
import 'package:plantee_app/ui/screens/side_menu/sidemenu_drawer_view_model.dart';
import 'package:plantee_app/ui/screens/side_menu/widgets/header_widget.dart';

enum SideMenuItemType { myAccount, favourites, settings, contactUs, logOut }

extension SideMenuItemTypeExtension on SideMenuItemType {
  String get title {
    switch (this) {
      case SideMenuItemType.myAccount:
        return 'My Account';
      case SideMenuItemType.favourites:
        return 'Favourites';
      case SideMenuItemType.settings:
        return 'Settings';
      case SideMenuItemType.contactUs:
        return 'Contact Us';
      case SideMenuItemType.logOut:
        return 'Log Out';
    }
  }

  IconData get iconData {
    switch (this) {
      case SideMenuItemType.myAccount:
        return Icons.account_circle_outlined;
      case SideMenuItemType.favourites:
        return Icons.favorite_outline_rounded;
      case SideMenuItemType.settings:
        return Icons.settings_outlined;
      case SideMenuItemType.contactUs:
        return Icons.contact_support_outlined;
      case SideMenuItemType.logOut:
        return Icons.logout_outlined;
    }
  }
}

class SideMenuItemProp {
  final SideMenuItemType type;
  final DrawerItemWidget item;

  SideMenuItemProp(
      {required this.type, required this.item});
}

class SideMenuDrawer extends StatelessWidget {
  final SidemenuDrawerViewModel viewModel;

  const SideMenuDrawer({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff14141d),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 80, 1, 40),
            child: HeaderWidget(),
          ),
          const Divider(
            thickness: 1,
            color: Colors.white38,
          ),
          const SizedBox(
            height: 30,
          ),
          viewModel.sideMenuItemProps[0].item, // My Account
          viewModel.sideMenuItemProps[1].item, // Favourites
          viewModel.sideMenuItemProps[2].item, // Settings
          const SizedBox(
            height: 120,
          ),
          const Divider(
            thickness: 1,
            color: Colors.white38,
          ),
          const SizedBox(
            height: 20,
          ),
          viewModel.sideMenuItemProps[3].item, // Contact Us
          viewModel.sideMenuItemProps[4].item, // Log Out
        ],
      ),
    );
  }
}
