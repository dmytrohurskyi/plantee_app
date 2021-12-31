import 'package:flutter/material.dart';
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
        );
      },
      builder: (_, viewModel) {
        return SideMenuDrawer(viewModel: viewModel);
      },
    );
  }
}
