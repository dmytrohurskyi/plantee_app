import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/widgets/background_container_widget.dart';

class MainStackWidget extends StatelessWidget {
  const MainStackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundContainerWidget(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: const [
                Text(
                  'Find the perfect plant\nfor your home.',
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w300,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
