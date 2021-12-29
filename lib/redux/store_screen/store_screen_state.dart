import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class StoreScreenState extends Equatable {
  final String error;
  final bool isLoading;

  const StoreScreenState({
    required this.error,
    required this.isLoading,
  });

  factory StoreScreenState.initial() {
    return const StoreScreenState(
      error: '',
      isLoading: false,
    );
  }

  StoreScreenState copyWith({
    String? error,
    bool? isLoading,
  }) {
    return StoreScreenState(
        error: error ?? this.error,
        isLoading: isLoading ?? this.isLoading);
  }

  @override
  List<Object> get props => [error, isLoading];
}
