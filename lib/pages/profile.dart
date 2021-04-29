import 'package:collections/widgets/custom_bottom_bar.dart';
import 'package:collections/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  // Constants
  final NavigationIcon = Icon(
    FontAwesomeIcons.userAlt,
    size: 22.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(),
      body: SafeArea(
        child: ListView(
          children: [
            NavigationBar(title: "tamilanda", actionIcon: this.NavigationIcon),
            SizedBox(height: 10.0),
            CircleAvatar(
              backgroundColor: Color(0xffc4c4c4),
              radius: 75.0,
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tamilanda",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Gilroy-Bold",
                      fontSize: 28.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Container(
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "3,820",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Gilroy-Bold",
                            fontSize: 24.0),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            color: Color(0xff888888),
                            fontFamily: "Gilroy-Bold",
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                  SizedBox(width: 5.0),
                  VerticalDivider(
                    thickness: 1.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "122",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Gilroy-Bold",
                            fontSize: 24.0),
                      ),
                      Text(
                        "Bookmarks",
                        style: TextStyle(
                            color: Color(0xff888888),
                            fontFamily: "Gilroy-Bold",
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text("bookmarks",
                    style: TextStyle(
                        fontFamily: "Gilroy-Bold",
                        color: Colors.black,
                        fontSize: 18.0))
              ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: List.generate(500, (index) {
                    return Container(
                      height: (MediaQuery.of(context).size.width - 70) / 3,
                      width: (MediaQuery.of(context).size.width - 70) / 3,
                      decoration: BoxDecoration(
                          color: Color(0xffc4c4c4),
                          borderRadius: BorderRadius.circular(10.0)),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
