import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class SideMenuState extends Equatable {
  final bool isSidemenuActive;

  const SideMenuState({
    required this.isSidemenuActive,
  });

  factory SideMenuState.initial() {
    return const SideMenuState(
      isSidemenuActive: false,
    );
  }

  SideMenuState copyWith({
    bool? isSidemenuActive
  }) {
    return SideMenuState(
        isSidemenuActive: isSidemenuActive ?? this.isSidemenuActive);
  }

  @override
  List<Object> get props => [isSidemenuActive];
}
