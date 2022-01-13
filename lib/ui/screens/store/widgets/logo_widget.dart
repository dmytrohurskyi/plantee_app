import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /*SvgPicture.asset(
          'assets/images/plant_icon.svg',
          height: 64,
          width: 64,
          color: Colors.white,
        ),*/
        Image.asset(
          'assets/images/leaf.png',
          height: 25,
          width: 25,
          color: Colors.white,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 5,),
        const Text(
          'Plantee',
          style: TextStyle(
            letterSpacing: 2,
            fontSize: 23,
            color: Colors.white,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w300,
          ),
          maxLines: 2,
        ),
      ],
    );
  }
}
