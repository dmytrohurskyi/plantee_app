import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/category_pageview_widget.dart';

class PlantsSectionWidget extends StatefulWidget {
  final StoreScreenViewModel viewModel;

  const PlantsSectionWidget({Key? key, required this.viewModel})
      : super(key: key);

  @override
  _PlantsSectionWidgetState createState() => _PlantsSectionWidgetState();
}

class _PlantsSectionWidgetState extends State<PlantsSectionWidget> {
  final PageController categoryPageController = PageController(initialPage: 0);

  @override
  void didUpdateWidget(covariant PlantsSectionWidget oldWidget) {
    categoryPageController.animateToPage(
        widget.viewModel.categoryPageViewItem.index,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Category',
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 23,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      widget.viewModel
                          .onCategoryChanged(CategoryPageViewItem.topPicks);
                    },
                    child: const Text('Top Picks'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: widget.viewModel.categoryPageViewItem !=
                              CategoryPageViewItem.topPicks
                          ? Colors.white60
                          : const Color(0xc8c4d909),
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 18,
                        color: Colors.white70,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  TextButton(
                    onPressed: () {
                      widget.viewModel
                          .onCategoryChanged(CategoryPageViewItem.indoor);
                    },
                    child: const Text('Indoor'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: widget.viewModel.categoryPageViewItem !=
                              CategoryPageViewItem.indoor
                          ? Colors.white60
                          : const Color(0xc8c4d909),
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 18,
                        color: Colors.white70,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  TextButton(
                    onPressed: () {
                      widget.viewModel
                          .onCategoryChanged(CategoryPageViewItem.outdoor);
                    },
                    child: const Text('Outdoor'),
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: widget.viewModel.categoryPageViewItem !=
                              CategoryPageViewItem.outdoor
                          ? Colors.white60
                          : const Color(0xc8c4d909),
                      textStyle: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 18,
                        color: Colors.white70,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              CategoryPageViewWidget(
                viewModel: widget.viewModel,
                categoryPageController: categoryPageController,
              ),
            ],
          ),
        )
      ],
    );
  }
}
