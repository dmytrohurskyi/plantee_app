import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/ui/screens/store/store_screen.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';

class StoreScreenConnector extends StatelessWidget {
  const StoreScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StoreScreenViewModel>(
      distinct: true,
      converter: (store) {
        return StoreScreenViewModel(
          error: store.state.storeScreenState.error,
          isLoading: store.state.storeScreenState.isLoading,
        );
      },
      builder: (_, viewModel) {
        return StoreScreen(
          viewModel: viewModel,
        );
      },
    );
  }
}
