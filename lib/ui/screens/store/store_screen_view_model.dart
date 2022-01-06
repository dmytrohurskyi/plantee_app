import 'package:equatable/equatable.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/category_pageview_widget.dart';

class StoreScreenViewModel extends Equatable {
  final String error;
  final bool isLoading;
  final CategoryPageViewItem categoryPageViewItem;
  final Function(CategoryPageViewItem) onCategoryChanged;

  const StoreScreenViewModel({
    required this.error,
    required this.isLoading,
    required this.categoryPageViewItem,
    required this.onCategoryChanged,
  });

  @override
  List<Object> get props => [
        error,
        isLoading,
        categoryPageViewItem,
        onCategoryChanged,
      ];
}
