import 'package:equatable/equatable.dart';
import 'package:plantee_app/ui/screens/bottom_nav_bar/bottom_nav_bar_widget.dart';

class BottomNavBarViewModel extends Equatable {
  final List<dynamic> navBarItemProps;
  final NavBarItemType currentNavBarItemType;
  final Function(int) changeTab;

  const BottomNavBarViewModel({
    required this.currentNavBarItemType,
    required this.navBarItemProps,
    required this.changeTab,
  });

  @override
  List<Object> get props => [
        currentNavBarItemType,
        navBarItemProps,
        changeTab,
      ];
}
