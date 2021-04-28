import 'package:collections/pages/discover.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "bottom-bar",
      child: Container(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                if (ModalRoute.of(context).settings.name != "home") {
                  Navigator.of(context).popAndPushNamed("home");
                }
              },
              child: Icon(
                FontAwesomeIcons.home,
                color: ModalRoute.of(context).settings.name == "home"
                    ? Colors.black.withOpacity(1)
                    : Colors.black.withOpacity(.5),
                size: 25.0,
              ),
            ),
            GestureDetector(
              onTap: () {
                if (ModalRoute.of(context).settings.name != "discover") {
                  Navigator.of(context).popAndPushNamed("discover");
                }
              },
              child: Icon(
                FontAwesomeIcons.compass,
                color: ModalRoute.of(context).settings.name == "discover"
                    ? Colors.black.withOpacity(1)
                    : Colors.black.withOpacity(.5),
                size: 25.0,
              ),
            ),
            Icon(
              FontAwesomeIcons.userCircle,
              color: ModalRoute.of(context).settings.name == "profile"
                  ? Colors.black.withOpacity(1)
                  : Colors.black.withOpacity(.5),
              size: 25.0,
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Color(0xff000000)))),
        height: 55.0,
      ),
    );
  }
}
