import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:plantee_app/redux/app/app_state.dart';
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
          selectedScreenIndex:
              store.state.bottomNavBarWidgetState.selectedScreenIndex,
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
