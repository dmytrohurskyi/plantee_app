import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/redux/side_menu/side_menu_connector.dart';
import 'package:plantee_app/ui/screens/side_menu/sidemenu_drawer.dart';
import 'package:plantee_app/ui/screens/store/store_body_widget.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';

class StoreScreen extends StatelessWidget {
  final StoreScreenViewModel viewModel;

  const StoreScreen({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidemenuConnector(),
      body: StoreBodyWidget(
        viewModel: viewModel,
      ),
    );
  }
}
