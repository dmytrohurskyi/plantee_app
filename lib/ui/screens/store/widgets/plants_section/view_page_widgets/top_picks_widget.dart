import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/view_page_widgets/grid_view_item_widget.dart';

class TopPicksWidget extends StatelessWidget {
  final StoreScreenViewModel viewModel;

  const TopPicksWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isLoading) {
      return Container(
        child: const Center(
          child: CupertinoActivityIndicator(
            animating: true,
          ),
        ),
      );
    }
    if (viewModel.error.isNotEmpty) {
      return Container(
        color: Colors.redAccent,
        child: Center(
          child: Text(
            'Some error occured while loading items.'
            '\nCheck your internet connection.'
            '\nUseful info: ${viewModel.error}',
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: viewModel.storeItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GridViewItemWidget(
          item: viewModel.storeItems[index],
        );
      },
    );
  }
}
