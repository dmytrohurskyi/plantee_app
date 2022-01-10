import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/category_pageview_widget.dart';

class ChangeCategoryPageAction {
  final CategoryPageViewItem categoryPageViewItem;

  ChangeCategoryPageAction(this.categoryPageViewItem);
}

class RequestItemsDataEventsAction {}

class ItemsDataEventsRequestedAction {
  final StreamSubscription itemsSubscription;

  ItemsDataEventsRequestedAction(this.itemsSubscription);
}

class CancelItemsDataEventsAction {}

class ItemsOnDataEventAction {
  final List list;

  ItemsOnDataEventAction(this.list);
}
