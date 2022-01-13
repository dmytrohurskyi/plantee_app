import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_action.dart';
import 'package:plantee_app/ui/screens/bottom_nav_bar/bottom_nav_bar_view_model.dart';
import 'package:plantee_app/ui/screens/bottom_nav_bar/bottom_nav_bar_widget.dart';

class BottomNavBarWidgetConnector extends StatelessWidget {
  const BottomNavBarWidgetConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BottomNavBarViewModel>(
      distinct: true,
      converter: (store) {
        return BottomNavBarViewModel(
          currentNavBarItemType:
              store.state.bottomNavBarWidgetState.currentNavBarItemType,
          navBarItemProps: generateNavBarItemProps(store),
        );
      },
      builder: (_, viewModel) {
        return BottomNavBarWidget(
          viewModel: viewModel,
        );
      },
    );
  }
}

List<dynamic> generateNavBarItemProps(Store<AppState> store) {
  return NavBarItemType.values.map((type) {
    return NavBarItemProp(
        type: type,
        item: BottomNavigationBarItem(label: type.label, icon: type.iconWidget),
        onClick: () {
          store.dispatch(ChangeTabAction(type));
        });
  }).toList();
}
