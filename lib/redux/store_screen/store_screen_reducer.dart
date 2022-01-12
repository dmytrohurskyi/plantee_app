import 'package:plantee_app/data_models/store_item_data_class.dart';
import 'package:plantee_app/redux/store_screen/store_screen_action.dart';
import 'package:plantee_app/redux/store_screen/store_screen_state.dart';
import 'package:redux/redux.dart';

final storeScreenReducer = combineReducers<StoreScreenState>(
  [
    TypedReducer<StoreScreenState, ChangeCategoryPageAction>(
      _changeCategoryPageAction,
    ),
    TypedReducer<StoreScreenState, ItemsDataEventsRequestedAction>(
      _registerItemsSubscription,
    ),
    TypedReducer<StoreScreenState, CancelItemsDataEventsAction>(
      _cancelItemsSubscription,
    ),
    TypedReducer<StoreScreenState, ItemsOnDataEventAction>(
      _setStoreItemsList,
    ),
    TypedReducer<StoreScreenState, ItemsFetchingOnErrorAction>(
      _itemsFetchingOnErrorAction,
    ),
  ],
);

StoreScreenState _changeCategoryPageAction(
  StoreScreenState state,
  ChangeCategoryPageAction action,
) {
  return state.copyWith(categoryPageViewItem: action.categoryPageViewItem);
}

StoreScreenState _registerItemsSubscription(
  StoreScreenState state,
  ItemsDataEventsRequestedAction action,
) {
  return state.copyWith(itemsSubscription: action.itemsSubscription);
}

StoreScreenState _cancelItemsSubscription(
  StoreScreenState state,
  CancelItemsDataEventsAction action,
) {
  state.itemsSubscription?.cancel();
  return state.copyWith(itemsSubscription: null);
}

StoreScreenState _setStoreItemsList(
  StoreScreenState state,
  ItemsOnDataEventAction action,
) {
  List<StoreItem> itemList = [];
  action.list.forEach((element) {
    itemList.add(StoreItem.fromJson(element));
  });
  return state.copyWith(isLoading: false, error: '', storeItems: itemList);
}

StoreScreenState _itemsFetchingOnErrorAction(
  StoreScreenState state,
  ItemsFetchingOnErrorAction action,
) {
  return state.copyWith(isLoading: false, error: action.error);
}
