import 'package:equatable/equatable.dart';
import 'package:plantee_app/data_models/store_item_data_class.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/category_pageview_widget.dart';

class StoreScreenViewModel extends Equatable {
  final String error;
  final bool isLoading;
  final CategoryPageViewItem categoryPageViewItem;
  final Function(CategoryPageViewItem) onCategoryChanged;
  final List<StoreItem> storeItems;

  const StoreScreenViewModel(
      {required this.error,
      required this.isLoading,
      required this.categoryPageViewItem,
      required this.onCategoryChanged,
      required this.storeItems});

  @override
  List<Object> get props => [
        error,
        isLoading,
        categoryPageViewItem,
        onCategoryChanged,
        storeItems,
      ];
}
