import 'package:plantee_app/redux/store_screen/store_screen_middleware.dart';
import 'package:redux/redux.dart';

import 'app/app_navigation_middleware.dart';
import 'app/app_reducer.dart';
import 'app/app_state.dart';

Store<AppState> createStore() {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [
      StoreScreenMiddleware(),
      //AppNavigationMiddleware(),
    ],
  );
}
