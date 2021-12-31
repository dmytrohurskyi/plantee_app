import 'package:equatable/equatable.dart';

class SidemenuDrawerViewModel extends Equatable {
  final bool isSidemenuActive;

  const SidemenuDrawerViewModel({
    required this.isSidemenuActive,
  });

  @override
  List<Object> get props => [
    isSidemenuActive,
  ];
}
