import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/redux/bottom_nav_bar_widget/bottom_nav_bar_widget_connector.dart';
import 'package:plantee_app/redux/store_screen/side_menu/side_menu_connector.dart';
import 'package:plantee_app/ui/screens/store/store_body_widget.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';

class StoreScreen extends StatelessWidget {
  final StoreScreenViewModel viewModel;

  const StoreScreen({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: const SidemenuConnector(),
      bottomNavigationBar: const BottomNavBarWidgetConnector(),
      body: StoreBodyWidget(
        viewModel: viewModel,
      ),
    );
  }
}
