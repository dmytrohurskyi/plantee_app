import 'package:equatable/equatable.dart';

class BottomNavBarViewModel extends Equatable {
  final int selectedScreenIndex; // It'd be grate to implement this with enum

  const BottomNavBarViewModel({
    required this.selectedScreenIndex,
  });

  @override
  List<Object> get props => [
        selectedScreenIndex,
      ];
}
