import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/bottom_nav_bar/bottom_nav_bar_widget.dart';

@immutable
class BottomNavBarWidgetState extends Equatable {
  final List<NavBarItemProp> navBarItemProps;
  final NavBarItemType currentNavBarItemType;


  const BottomNavBarWidgetState({
    required this.navBarItemProps,
    required this.currentNavBarItemType,
  });

  factory BottomNavBarWidgetState.initial() {
    return const BottomNavBarWidgetState(
      navBarItemProps: [],
      currentNavBarItemType: NavBarItemType.STORE,
    );
  }

  BottomNavBarWidgetState copyWith({
    List<NavBarItemProp>? navBarItemProps,
    NavBarItemType? currentNavBarItemType
  }) {
    return BottomNavBarWidgetState(
        navBarItemProps: navBarItemProps ?? this.navBarItemProps,
        currentNavBarItemType: currentNavBarItemType ??
            this.currentNavBarItemType);
  }

  @override
  List<Object> get props => [navBarItemProps, currentNavBarItemType];
}
