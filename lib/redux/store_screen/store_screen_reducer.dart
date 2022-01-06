import 'package:plantee_app/redux/store_screen/store_screen_action.dart';
import 'package:plantee_app/redux/store_screen/store_screen_state.dart';
import 'package:redux/redux.dart';

final storeScreenReducer = combineReducers<StoreScreenState>(
  [
    TypedReducer<StoreScreenState, ChangeCategoryPageAction>(
      _changeCategoryPageAction,
    ),
  ],
);

StoreScreenState _changeCategoryPageAction(
  StoreScreenState state,
  ChangeCategoryPageAction action,
) {
  return state.copyWith(categoryPageViewItem: action.categoryPageViewItem);
}
