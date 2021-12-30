import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 36,
          child: CircleAvatar(
            backgroundColor: Colors.yellow,
            radius: 34,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Dmytro Hurskyi',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 7,),
            SizedBox(
              width: 200,
              child: Text(
                'dmytro.hurskyi@sigma.software',
                maxLines: 2,
                overflow: TextOverflow.fade,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
