import 'package:collections/pages/discover.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (ModalRoute.of(context).settings.name != "home") {
                print(Navigator.of(context));

                Navigator.of(context).popUntil((route) => route.isFirst);
              }
            },
            icon: Icon(
              FontAwesomeIcons.home,
              color: ModalRoute.of(context).settings.name == "home"
                  ? Colors.black.withOpacity(1)
                  : Colors.black.withOpacity(.5),
              size: 25.0,
            ),
          ),
          IconButton(
            onPressed: () {
              if (ModalRoute.of(context).settings.name != "discover") {
                print(Navigator.of(context));

                Navigator.of(context).pushNamedAndRemoveUntil(
                    "discover", (route) => route.isFirst);
              }
            },
            icon: Icon(
              FontAwesomeIcons.compass,
              color: ModalRoute.of(context).settings.name == "discover"
                  ? Colors.black.withOpacity(1)
                  : Colors.black.withOpacity(.5),
              size: 25.0,
            ),
          ),
          IconButton(
            onPressed: () {
              if (ModalRoute.of(context).settings.name != "profile") {
                print(Navigator.of(context));

                Navigator.of(context).pushNamedAndRemoveUntil(
                    "profile", (route) => route.isFirst);
              }
            },
            icon: Icon(
              FontAwesomeIcons.userCircle,
              color: ModalRoute.of(context).settings.name == "profile"
                  ? Colors.black.withOpacity(1)
                  : Colors.black.withOpacity(.5),
              size: 25.0,
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(color: Color(0xff888888).withOpacity(0.5)))),
      height: 55.0,
    );
  }
}
