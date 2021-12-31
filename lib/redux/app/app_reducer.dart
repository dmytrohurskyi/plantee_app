import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_reducer.dart';
import 'package:plantee_app/redux/store_screen/side_menu/side_menu_reducer.dart';
import 'package:plantee_app/redux/store_screen/store_screen_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
      storeScreenState: storeScreenReducer(
        state.storeScreenState,
        action,
      ),
      sideMenuState: sideMenuReducer(
        state.sideMenuState,
        action,
      ),
      bottomNavBarWidgetState: bottomNavBarWidgetReducer(
        state.bottomNavBarWidgetState,
        action,
      ));
}
