import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundContainerWidget extends StatelessWidget {
  const BackgroundContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightGreenAccent,
            Colors.yellow,
            Color(0xff050610),
          ],
          begin: Alignment.topRight,
          end: Alignment.centerLeft,
          stops: [0.1, 0.2, 0.35],
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 90.0, sigmaY: 90.0),
        child: Container(
          decoration: BoxDecoration(color: const Color(0xff050610).withOpacity(0.0)),
        ),
      ),
    );
  }
}
