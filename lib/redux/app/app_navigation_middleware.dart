import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_action.dart';
import 'package:redux/redux.dart';

import '../../main.dart';
import 'app_state.dart';

class AppNavigationMiddleware extends MiddlewareClass<AppState> {
  AppNavigationMiddleware();

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    switch (action.runtimeType) {
      case ChangeTabAction:
        _navigateToSelectedTab(store, action);
        break;
      default:
        break;
    }
  }

  void _navigateToSelectedTab(Store<AppState> store, ChangeTabAction action) {
    PlanteeApp.navKey.currentState?.pushNamed(
        '/${action.navBarItemType.name.toLowerCase() == 'store' ? '' : action.navBarItemType.name.toLowerCase()}');
  }
}
