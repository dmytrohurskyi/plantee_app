import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/view_page_widgets/items_by_category_widget.dart';

enum CategoryPageViewItem { topPicks, indoor, outdoor }

class CategoryPageViewWidget extends StatefulWidget {
  final StoreScreenViewModel viewModel;
  final PageController categoryPageController;

  const CategoryPageViewWidget({
    Key? key,
    required this.viewModel,
    required this.categoryPageController,
  }) : super(key: key);

  @override
  _CategoryPageViewWidgetState createState() => _CategoryPageViewWidgetState();
}

class _CategoryPageViewWidgetState extends State<CategoryPageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 373,
          width: double.maxFinite,
          child: PageView(
            controller: widget.categoryPageController,
            children: [
              ItemsByCategoryWidget(viewModel: widget.viewModel),
              ItemsByCategoryWidget(viewModel: widget.viewModel),
              ItemsByCategoryWidget(viewModel: widget.viewModel),
            ],
          ),
        )
      ],
    );
  }
}
