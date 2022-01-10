import 'package:plantee_app/data_models/item.dart';
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
  List<Item> itemList = [];

  action.list.forEach((element) {
    itemList.add(Item.fromMap(element));
  });
  return state.copyWith(storeItems: itemList); //storeItems: list
}


