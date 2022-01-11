import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:plantee_app/redux/app/app_state.dart';
import 'package:plantee_app/redux/store_screen/store_screen_action.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/category_pageview_widget.dart';
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
    final String category;
    switch(store.state.storeScreenState.categoryPageViewItem){
      case CategoryPageViewItem.topPicks:
        category = 'Top Picks';
        break;
      case CategoryPageViewItem.indoor:
        category = 'Indoor';
        break;
      case CategoryPageViewItem.outdoor:
        category = 'Outdoor';
        break;
    }

    final StreamSubscription subscription = FirebaseFirestore.instance
        .collection('items').where('category', isEqualTo: category)
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
