import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/side_menu/widgets/drawer_item_widget.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/ui/screens/side_menu/sidemenu_drawer.dart';
import 'package:plantee_app/ui/screens/side_menu/sidemenu_drawer_view_model.dart';

class SidemenuConnector extends StatelessWidget {
  const SidemenuConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SidemenuDrawerViewModel>(
      distinct: true,
      converter: (store) {
        return SidemenuDrawerViewModel(
          isSidemenuActive: store.state.sideMenuState.isSidemenuActive,
          sideMenuItemProps:
              generateSideMenuItemProps(store) as List<SideMenuItemProp>,
        );
      },
      builder: (_, viewModel) {
        return SideMenuDrawer(viewModel: viewModel);
      },
    );
  }
}

List<dynamic> generateSideMenuItemProps(Store<AppState> store) {
  return SideMenuItemType.values.map((type) {
    return SideMenuItemProp(
        type: type,
        item: DrawerItemWidget(
          title: type.title,
          icon: type.iconData,
          onPressed: () {
            //TODO: dispatch some action, e.g. store.dispatch(ChangeTabAction(type));
          },
        ));
  }).toList();
}
