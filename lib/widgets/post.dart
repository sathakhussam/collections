import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  var name;
  var location;
  var imageUrl;
  var profileUrl;
  var likes;

  Post({this.name, this.location, this.imageUrl, this.likes, this.profileUrl});

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
                  buildPostProfile(profileUrl),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildPostUserName(name),
                      buildPostUserLocation(location),
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
          buildPostImage(context, imageUrl),
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
          buildPostLikesText(likes),
          Divider(
            color: Color(0xffF2F2F2),
            thickness: 1.5,
          )
        ],
      ),
    );
  }

  CircleAvatar buildPostProfile(profileUrl) {
    return CircleAvatar(
      backgroundColor: Color(0xffc4c4c4),
      backgroundImage: AssetImage(profileUrl),
      radius: 20.0,
    );
  }

  Text buildPostLikesText(likes) {
    return Text(
      '${likes} likes',
      style: TextStyle(
          fontFamily: "Gilroy-Bold",
          fontWeight: FontWeight.w800,
          fontSize: 14.0),
    );
  }

  Container buildPostImage(BuildContext context, imageUrl) {
    return Container(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border:
            Border.all(color: Color(0xff333333).withOpacity(.01), width: 0.1),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 0.5,
          )
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xffc4c4c4),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Image(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Text buildPostUserLocation(location) {
    return Text(
      location,
      style: TextStyle(
          color: Color(0xff989898), fontFamily: "Gilroy", fontSize: 13.0),
    );
  }

  Text buildPostUserName(name) {
    return Text(
      name,
      style: TextStyle(
          fontFamily: "Gilroy-Bold",
          fontWeight: FontWeight.w800,
          fontSize: 15.0),
    );
  }
}
