import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/redux/store_screen/store_screen_action.dart';
import 'package:plantee_app/ui/screens/store/store_screen.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';

class StoreScreenConnector extends StatelessWidget {
  const StoreScreenConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, StoreScreenViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(RequestItemsDataEventsAction()),
      onDispose: (store) => store.dispatch(CancelItemsDataEventsAction()),
      converter: (store) {
        return StoreScreenViewModel(
            storeItems: store.state.storeScreenState.storeItems,
            error: store.state.storeScreenState.error,
            isLoading: store.state.storeScreenState.isLoading,
            categoryPageViewItem:
                store.state.storeScreenState.categoryPageViewItem,
            onCategoryChanged: (categoryPageItemType) {
              store.dispatch(ChangeCategoryPageAction(categoryPageItemType));
            });
      },
      builder: (_, viewModel) {
        return StoreScreen(
          viewModel: viewModel,
        );
      },
    );
  }
}
