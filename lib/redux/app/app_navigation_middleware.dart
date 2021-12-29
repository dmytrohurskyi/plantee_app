import 'package:redux/redux.dart';

import 'app_state.dart';

class AppNavigationMiddleware extends MiddlewareClass<AppState> {

  AppNavigationMiddleware();

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    /*switch (action.runtimeType) {
      case CitiesListScreenCitySelectedAction:
        _navigateToHomeScreen(store);
        break;
      default:
        break;
    }*/
  }

  /*void _navigateToHomeScreen(Store<AppState> store) {
    MyApp.navKey.currentState?.pushNamed('/home');
  }*/
}