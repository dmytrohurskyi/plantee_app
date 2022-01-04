import 'package:flutter/material.dart';

class TopTextWidget extends StatelessWidget {
  const TopTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 45),
          child: Column(
            children: const [
              Text(
                'Find the perfect plant\nfor your home',
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 25,
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 2,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Create a little garden in your home',
                style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  color: Color(0xD4E3E3E3),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 2,
              )
            ],
          ),
        ),
      ],
    );
  }
}
