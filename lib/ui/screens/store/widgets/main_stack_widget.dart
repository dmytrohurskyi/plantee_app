import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/store_screen_view_model.dart';
import 'package:plantee_app/ui/screens/store/widgets/background_container_widget.dart';
import 'package:plantee_app/ui/screens/store/widgets/plants_section/plants_section_widget.dart';
import 'package:plantee_app/ui/screens/store/widgets/search_bar_widget.dart';
import 'package:plantee_app/ui/screens/store/widgets/top_section_widget.dart';
import 'package:plantee_app/ui/screens/store/widgets/top_text_widget.dart';

class MainStackWidget extends StatefulWidget {
  final StoreScreenViewModel viewModel;

  const MainStackWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  _MainStackWidgetState createState() => _MainStackWidgetState();
}

class _MainStackWidgetState extends State<MainStackWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundContainerWidget(),
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const TopSectionWidget(),
                  const TopTextWidget(),
                  const SearchBarWidget(),
                  PlantsSectionWidget(
                    viewModel: widget.viewModel,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

