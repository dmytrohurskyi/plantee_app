import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/category_pageview_widget.dart';

@immutable
class StoreScreenState extends Equatable {
  final String error;
  final bool isLoading;
  final CategoryPageViewItem categoryPageViewItem;

  const StoreScreenState({
    required this.error,
    required this.isLoading,
    required this.categoryPageViewItem,
  });

  factory StoreScreenState.initial() {
    return const StoreScreenState(
      error: '',
      isLoading: false,
      categoryPageViewItem: CategoryPageViewItem.topPicks,
    );
  }

  StoreScreenState copyWith({
    String? error,
    bool? isLoading,
    CategoryPageViewItem? categoryPageViewItem,
  }) {
    return StoreScreenState(
        error: error ?? this.error,
        isLoading: isLoading ?? this.isLoading,
        categoryPageViewItem:
            categoryPageViewItem ?? this.categoryPageViewItem);
  }

  @override
  List<Object> get props => [error, isLoading, categoryPageViewItem];
}
