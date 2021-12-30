import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 45, bottom: 40),
      child: TextField(
        maxLines: 2,
        minLines: 1,
        style: TextStyle(
          color: Colors.white,
          letterSpacing: 0.5,
          fontSize: 18,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w300,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            CupertinoIcons.search,
            size: 25,
            color: Colors.white70,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white70, width: 1.0),
          ),
          hintText: 'Search plant...',
          hintStyle: TextStyle(
            color: Colors.white,
            letterSpacing: 1,
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
