import 'package:equatable/equatable.dart';
import 'package:plantee_app/ui/screens/side_menu/sidemenu_drawer.dart';

class SidemenuDrawerViewModel extends Equatable {
  final List<SideMenuItemProp> sideMenuItemProps;
  final bool isSidemenuActive;

  const SidemenuDrawerViewModel({
    required this.sideMenuItemProps,
    required this.isSidemenuActive,
  });

  @override
  List<Object> get props => [
    sideMenuItemProps,
    isSidemenuActive,
  ];
}
