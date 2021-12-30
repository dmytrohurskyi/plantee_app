import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/widgets/logo_widget.dart';

class TopSectionWidget extends StatelessWidget {
  const TopSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            )),
        const LogoWidget(),
        const SizedBox(
          width: 26,
          height: 26,
        )
      ],
    );
  }
}
