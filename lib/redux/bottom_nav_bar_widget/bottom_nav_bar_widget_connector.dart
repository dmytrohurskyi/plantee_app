import 'package:flutter/material.dart';
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
          navBarItemProps: generateNavBarItemProps(),
          changeTab: (index) {
            NavBarItemType _itemType = NavBarItemType.values[index];
            store.dispatch(ChangeTabAction(_itemType));
          },
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

List<dynamic> generateNavBarItemProps() {
  return NavBarItemType.values.map((type) {
    return NavBarItemProp(
        type: type,
        item:
            BottomNavigationBarItem(label: type.label, icon: type.iconWidget));
  }).toList();
  //[
  /*NavBarItemProp(
      type: NavBarItemType.STORE,
      item: const BottomNavigationBarItem(
        label: 'Store',
        icon: Icon(Icons.storefront_outlined),
      ),
    ),
    NavBarItemProp(
      type: NavBarItemType.CART,
      item: const BottomNavigationBarItem(
        label: 'Cart',
        icon: Icon(Icons.shopping_cart_outlined),
      ),
    ),
    NavBarItemProp(
      type: NavBarItemType.ORDERS,
      item: const BottomNavigationBarItem(
        label: 'Orders',
        icon: Icon(Icons.list_alt_outlined),
      ),
    ),*/
  //];
}
