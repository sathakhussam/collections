import 'package:collections/widgets/custom_bottom_bar.dart';
import 'package:collections/widgets/navigation_bar.dart';
import 'package:collections/widgets/search_bar.dart';
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
              actionIcon: Icon(FontAwesomeIcons.search),
            ),
            SearchBar()
          ],
        ),
      ),
    );
  }
}
