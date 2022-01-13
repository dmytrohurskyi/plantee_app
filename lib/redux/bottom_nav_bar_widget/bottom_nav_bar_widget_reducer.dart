import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_action.dart';
import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_state.dart';
import 'package:redux/redux.dart';

final bottomNavBarWidgetReducer = combineReducers<BottomNavBarWidgetState>(
  [
    TypedReducer<BottomNavBarWidgetState, ChangeTabAction>(
      _changeTabAction,
    ),
  ],
);

BottomNavBarWidgetState _changeTabAction(
  BottomNavBarWidgetState state,
  ChangeTabAction action,
) {
  return state.copyWith(currentNavBarItemType: action.navBarItemType);
}
