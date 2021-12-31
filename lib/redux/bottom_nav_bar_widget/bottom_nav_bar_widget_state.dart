import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class BottomNavBarWidgetState extends Equatable {
  final int selectedScreenIndex;

  const BottomNavBarWidgetState({
    required this.selectedScreenIndex,
  });

  factory BottomNavBarWidgetState.initial() {
    return const BottomNavBarWidgetState(
      selectedScreenIndex: 0,
    );
  }

  BottomNavBarWidgetState copyWith({
    int? selectedScreenIndex
  }) {
    return BottomNavBarWidgetState(
        selectedScreenIndex: selectedScreenIndex ?? this.selectedScreenIndex);
  }

  @override
  List<Object> get props => [selectedScreenIndex];
}
