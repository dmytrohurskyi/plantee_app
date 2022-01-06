import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';

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
  /*@override
  void didUpdateWidget(covariant CategoryPageViewWidget oldWidget) {
    widget.categoryPageController.animateToPage(
        widget.viewModel.categoryPageViewItem.index,
        duration: const Duration(microseconds: 500),
        curve: Curves.easeIn);
    super.didUpdateWidget(oldWidget);
  }*/

  @override
  Widget build(BuildContext context) {
    // widget.categoryPageController.animateToPage(widget.viewModel.categoryPageViewItem.index,
    //     duration: const Duration(microseconds: 500), curve: Curves.easeInOut);
    return Column(
      children: [
        SizedBox(
          height: 342,
          width: double.maxFinite,
          child: PageView(
            controller: widget.categoryPageController,
            children: [
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Top Picks'),
                ),
              ),
              Container(
                color: Colors.green,
                child: const Center(
                  child: Text('Indoor'),
                ),
              ),
              Container(
                color: Colors.blueAccent,
                child: const Center(
                  child: Text('Outdoor'),
                ),
              ),
            ],
          ),
        )
        /*Container(
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text(
                  'Top Picks',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Indoor',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  'Outdoor',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          width: double.infinity,
          child: TabBarView(
            controller: _tabController,
            children: const [
              Text(
                'first',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'second',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'third',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        )*/
      ],
    );
  }
}
