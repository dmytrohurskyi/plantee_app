import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/redux/store_screen/store_screen_action.dart';
import 'package:redux/redux.dart';

class StoreScreenMiddleware extends MiddlewareClass<AppState> {
  StoreScreenMiddleware();

  @override
  Future<void> call(Store<AppState> store, action, next) async {
    next(action);

    switch (action.runtimeType) {
      case RequestItemsDataEventsAction:
        _createStoreItemsDataSubscription(store);
        break;
      default:
        break;
    }
  }

  Future _createStoreItemsDataSubscription(Store<AppState> store) async {
    final StreamSubscription subscription = FirebaseFirestore.instance
        .collection('items')
        .snapshots()
        .listen((QuerySnapshot snapshot) {
      final list = snapshot.docs.map((doc) => doc.data()).toList();
      store.dispatch(ItemsOnDataEventAction(list));

    }, onError: (error) {
      store.dispatch(ItemsFetchingOnErrorAction(error.toString()));
    });
    store.dispatch(ItemsDataEventsRequestedAction(subscription));
  }
}
