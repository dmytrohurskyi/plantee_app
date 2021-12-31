import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/side_menu/widgets/drawer_item_widget.dart';
import 'package:plantee_app/ui/screens/side_menu/sidemenu_drawer_view_model.dart';
import 'package:plantee_app/ui/screens/side_menu/widgets/header_widget.dart';

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
          const SizedBox(height: 30,),
          DrawerItemWidget(
              title: 'My Account',
              icon: Icons.account_circle_outlined,
              onPressed: () {}),
          DrawerItemWidget(
              title: 'Favourites',
              icon: Icons.favorite_outline_rounded,
              onPressed: () {}),
          DrawerItemWidget(
              title: 'Settings',
              icon: Icons.settings_outlined,
              onPressed: () {}),
          const SizedBox(height: 120,),
          const Divider(
            thickness: 1,
            color: Colors.white38,
          ),
          const SizedBox(height: 20,),
          DrawerItemWidget(
              title: 'Contact Us',
              icon: Icons.contact_support_outlined,
              onPressed: () {}),
          DrawerItemWidget(
              title: 'Log out',
              icon: Icons.logout_outlined,
              onPressed: () {}),
        ],
      ),
    );
  }
}
