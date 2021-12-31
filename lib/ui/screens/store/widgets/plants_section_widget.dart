import 'package:flutter/material.dart';
import 'package:plantee_app/ui/screens/store/widgets/category_pageview_widget.dart';

class PlantsSectionWidget extends StatelessWidget {
  const PlantsSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Category',
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 23,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(height: 12,),
              CategoryPageViewWidget(),
            ],
          ),
        )
      ],
    );
  }
}
