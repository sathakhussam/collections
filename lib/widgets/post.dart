import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffc4c4c4),
                    radius: 25.0,
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sathak Uzham',
                        style: TextStyle(
                            fontFamily: "Gilroy-Bold",
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0),
                      ),
                      Text(
                        'Keelakarai',
                        style: TextStyle(
                            color: Color(0xff989898),
                            fontFamily: "Gilroy",
                            fontSize: 13.0),
                      )
                    ],
                  )
                ],
              ),
              Icon(
                FontAwesomeIcons.ellipsisH,
                size: 22.0,
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: MediaQuery.of(context).size.width,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color(0xffc4c4c4),
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(FontAwesomeIcons.heart, size: 25.0),
                SizedBox(width: 25.0),
                Icon(FontAwesomeIcons.shareSquare, size: 25.0),
              ]),
              Icon(
                FontAwesomeIcons.bookmark,
                size: 25.0,
              )
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            '13,257 likes',
            style: TextStyle(
                fontFamily: "Gilroy-Bold",
                fontWeight: FontWeight.w800,
                fontSize: 14.0),
          ),
          Divider(
            color: Color(0xffF2F2F2),
            thickness: 1.5,
          )
        ],
      ),
    );
  }
}
