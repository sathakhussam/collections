import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserCard extends StatelessWidget {
  // Constants
  final subTextStyle = TextStyle(
      color: Color(0xff888888), fontFamily: "Gilroy-Bold", fontSize: 14.0);

  final mainTextSyle =
      TextStyle(color: Colors.black, fontFamily: "Gilroy-Bold", fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffc4c4c4),
                radius: 30.0,
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "sathakuzham",
                      style: mainTextSyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Sathak Uzham",
                      style: subTextStyle,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
          child: Icon(
            FontAwesomeIcons.userPlus,
            color: Colors.black,
            size: 20.0,
          ),
        ),
      ],
    );
  }
}
