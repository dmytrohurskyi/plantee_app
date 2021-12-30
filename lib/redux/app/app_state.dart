import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/redux/side_menu/side_menu_state.dart';
import 'package:plantee_app/redux/store_screen/store_screen_state.dart';

@immutable
class AppState extends Equatable {
  final StoreScreenState storeScreenState;
  final SideMenuState sideMenuState;

  const AppState({
    required this.storeScreenState,
    required this.sideMenuState,
  });

  factory AppState.initial() {
    return AppState(
      storeScreenState: StoreScreenState.initial(),
      sideMenuState: SideMenuState.initial(),
    );
  }

  AppState copyWith(
    StoreScreenState? storeScreenState,
    SideMenuState? sideMenuState,
  ) {
    return AppState(
      storeScreenState: storeScreenState ?? this.storeScreenState,
      sideMenuState: sideMenuState ?? this.sideMenuState,
    );
  }

  @override
  List<Object> get props => [
        storeScreenState,
        sideMenuState,
      ];
}
