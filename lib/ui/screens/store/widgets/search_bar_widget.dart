import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20, bottom: 15),
      child: TextField(
        keyboardType: TextInputType.text,
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
