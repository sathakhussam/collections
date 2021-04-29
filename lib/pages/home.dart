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
              child: Post(
                name: "Sathak Uzham",
                imageUrl: 'assets/memes/IMG-20210428-WA0010.jpg',
                profileUrl: "assets/memes/my-profile.jpg",
                likes: "13,248",
                location: "Keelakarai",
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Post(
                name: "Sathak Uzham",
                imageUrl: 'assets/memes/IMG-20210428-WA0011.jpg',
                profileUrl: "assets/memes/my-profile.jpg",
                likes: "13,248",
                location: "Keelakarai",
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Post(
                name: "Sathak Uzham",
                imageUrl: 'assets/memes/IMG-20210428-WA0012.jpg',
                profileUrl: "assets/memes/my-profile.jpg",
                likes: "13,248",
                location: "Keelakarai",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
