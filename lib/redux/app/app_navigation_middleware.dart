import 'package:redux/redux.dart';

import 'app_state.dart';

class AppNavigationMiddleware extends MiddlewareClass<AppState> {

  AppNavigationMiddleware();

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);
  }

}