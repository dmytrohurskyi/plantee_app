import 'package:plantee_app/redux/store_screen/store_screen_reducer.dart';

import 'app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return AppState(
    storeScreenState: storeScreenReducer(
      state.storeScreenState,
      action,
    ),
  );
}