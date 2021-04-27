import 'package:collections/widgets/navigation_bar.dart';
import 'package:collections/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            NavigationBar(),
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
