import 'package:equatable/equatable.dart';
import 'package:plantee_app/ui/screens/bottom_nav_bar/bottom_nav_bar_widget.dart';

class BottomNavBarViewModel extends Equatable {
  final List<NavBarItemProp> navBarItemProps;
  final NavBarItemType currentNavBarItemType;

  const BottomNavBarViewModel({
    required this.currentNavBarItemType,
    required this.navBarItemProps,
  });

  @override
  List<Object> get props => [
        currentNavBarItemType,
        navBarItemProps,
      ];
}
