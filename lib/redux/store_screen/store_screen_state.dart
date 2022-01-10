import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/data_models/item.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/category_pageview_widget.dart';

@immutable
class StoreScreenState extends Equatable {
  final String error;
  final bool isLoading;
  final CategoryPageViewItem categoryPageViewItem;
  final List<Item> storeItems;
  final StreamSubscription? itemsSubscription;

  const StoreScreenState({
    required this.error,
    required this.isLoading,
    required this.categoryPageViewItem,
    required this.storeItems,
    required this.itemsSubscription,
  });

  factory StoreScreenState.initial() {

    return const StoreScreenState(
      error: '',
      isLoading: false,
      categoryPageViewItem: CategoryPageViewItem.topPicks,
      storeItems: [],
      itemsSubscription: null,
    );
  }

  StoreScreenState copyWith({
    String? error,
    bool? isLoading,
    CategoryPageViewItem? categoryPageViewItem,
    List<Item>? storeItems,
    StreamSubscription? itemsSubscription,
  }) {
    return StoreScreenState(
        error: error ?? this.error,
        isLoading: isLoading ?? this.isLoading,
        categoryPageViewItem: categoryPageViewItem ?? this.categoryPageViewItem,
        storeItems: storeItems ?? this.storeItems,
        itemsSubscription: itemsSubscription ?? this.itemsSubscription);
  }

  @override
  List<Object> get props =>
      [error, isLoading, categoryPageViewItem, storeItems];
}
