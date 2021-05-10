import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBar extends StatelessWidget {
  final title;
  final actionIcon;

  NavigationBar({this.title, this.actionIcon});

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
            this.title,
            style: TextStyle(
                fontFamily: "Gilroy-Bold",
                fontWeight: FontWeight.w800,
                fontSize: 28.0),
          ),
          Row(children: this.actionIcon),
        ],
      ),
    );
  }
}
