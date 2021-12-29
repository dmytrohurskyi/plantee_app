import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';
import 'package:plantee_app/ui/screens/store/widgets/main_stack_widget.dart';

class StoreBodyWidget extends StatelessWidget {
  final StoreScreenViewModel viewModel;

  const StoreBodyWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (viewModel.isLoading) {
      return Container(
        color: Colors.black12,
        child: const Center(
          child: CupertinoActivityIndicator(
            animating: true,
          ),
        ),
      );
    }
    return MainStackWidget();
  }
}
