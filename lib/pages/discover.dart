import 'package:collections/widgets/custom_bottom_bar.dart';
import 'package:collections/widgets/navigation_bar.dart';
import 'package:collections/widgets/search_bar.dart';
import 'package:collections/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(),
      body: SafeArea(
        child: Column(
          children: [
            NavigationBar(
              title: "Discover",
              actionIcon: [Icon(FontAwesomeIcons.search)],
            ),
            SearchBar(),
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: UserCard(),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xfff0f0f0)))),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: UserCard(),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Color(0xfff0f0f0)))),
            ),
          ],
        ),
      ),
    );
  }
}
