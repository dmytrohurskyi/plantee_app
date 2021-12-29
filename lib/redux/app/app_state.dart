import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/redux/store_screen/store_screen_state.dart';

@immutable
class AppState extends Equatable {
  final StoreScreenState storeScreenState;

  const AppState({
    required this.storeScreenState,
  });

  factory AppState.initial() {
    return AppState(
      storeScreenState: StoreScreenState.initial(),
    );
  }

  AppState copyWith(
    StoreScreenState? storeScreenState,
  ) {
    return AppState(
      storeScreenState: storeScreenState ?? this.storeScreenState,
    );
  }

  @override
  List<Object> get props => [
        storeScreenState,
      ];
}
