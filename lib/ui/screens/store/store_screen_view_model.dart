import 'package:equatable/equatable.dart';

class StoreScreenViewModel extends Equatable {
  final String error;
  final bool isLoading;

  const StoreScreenViewModel({
    required this.error,
    required this.isLoading,
  });

  @override
  List<Object> get props => [
        error,
        isLoading,
      ];
}
