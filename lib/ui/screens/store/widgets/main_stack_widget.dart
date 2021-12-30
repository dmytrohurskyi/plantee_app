import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/widgets/background_container_widget.dart';
import 'package:plantee_app/ui/screens/store/widgets/search_bar_widget.dart';
import 'package:plantee_app/ui/screens/store/widgets/top_section_widget.dart';
import 'package:plantee_app/ui/screens/store/widgets/top_text_widget.dart';

class MainStackWidget extends StatelessWidget {
  const MainStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundContainerWidget(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              children: const [
                TopSectionWidget(),
                TopTextWidget(),
                SearchBarWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
