import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;

  const DrawerItemWidget(
      {Key? key,
      required this.title,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 30),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            Icon(
              icon,
              size: 22,
              color: Colors.white70,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
