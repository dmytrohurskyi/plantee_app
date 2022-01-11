import 'package:flutter/material.dart';
import 'package:plantee_app/data_models/item.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/view_page_widgets/grid_view_item_widget.dart';

class TopPicksWidget extends StatelessWidget {
  final List<Item> storeItems;

  const TopPicksWidget({Key? key, required this.storeItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: storeItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GridViewItemWidget(
          item: storeItems[index],
        );
      },
    );
  }
}
