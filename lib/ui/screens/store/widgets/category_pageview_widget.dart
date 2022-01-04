import 'package:flutter/material.dart';

class CategoryPageViewWidget extends StatefulWidget {
  const CategoryPageViewWidget({Key? key}) : super(key: key);

  @override
  _CategoryPageViewWidgetState createState() => _CategoryPageViewWidgetState();
}

class _CategoryPageViewWidgetState extends State<CategoryPageViewWidget> {
  @override
  Widget build(BuildContext context) {
    //TabController _tabController = TabController(length: 3, vsync: this);

    return Column(
      children: [
        SizedBox(
          height: 340,
          width: double.maxFinite,
          child: PageView(
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.blueAccent,
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
