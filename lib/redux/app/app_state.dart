import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_state.dart';
import 'package:plantee_app/redux/store_screen/side_menu/side_menu_state.dart';
import 'package:plantee_app/redux/store_screen/store_screen_state.dart';

@immutable
class AppState extends Equatable {
  final StoreScreenState storeScreenState;
  final SideMenuState sideMenuState;
  final BottomNavBarWidgetState bottomNavBarWidgetState;

  const AppState({
    required this.storeScreenState,
    required this.sideMenuState,
    required this.bottomNavBarWidgetState,
  });

  factory AppState.initial() {
    return AppState(
      storeScreenState: StoreScreenState.initial(),
      sideMenuState: SideMenuState.initial(),
      bottomNavBarWidgetState: BottomNavBarWidgetState.initial(),
    );
  }

  AppState copyWith(
    StoreScreenState? storeScreenState,
    SideMenuState? sideMenuState,
    BottomNavBarWidgetState? bottomNavBarWidgetState,
  ) {
    return AppState(
      storeScreenState: storeScreenState ?? this.storeScreenState,
      sideMenuState: sideMenuState ?? this.sideMenuState,
      bottomNavBarWidgetState:
          bottomNavBarWidgetState ?? this.bottomNavBarWidgetState,
    );
  }

  @override
  List<Object> get props => [
        storeScreenState,
        sideMenuState,
        bottomNavBarWidgetState,
      ];
}
