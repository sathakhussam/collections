import 'package:collections/widgets/custom_bottom_bar.dart';
import 'package:collections/widgets/navigation_bar.dart';
import 'package:collections/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomBar(),
      body: SafeArea(
        child: ListView(
          children: [
            NavigationBar(
              title: "Collections",
              actionIcon: Icon(FontAwesomeIcons.solidPaperPlane, size: 22.0),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Post(),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Post(),
            ),
          ],
        ),
      ),
    );
  }
}
