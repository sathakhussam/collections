import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.ideographic,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Collections',
            style: TextStyle(
                fontFamily: "Gilroy-Bold",
                letterSpacing: 1.2,
                fontWeight: FontWeight.w800,
                fontSize: 28.0),
          ),
          Icon(
            FontAwesomeIcons.solidPaperPlane,
            size: 22.0,
          )
        ],
      ),
    );
  }
}
