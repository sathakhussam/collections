import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 0.0),
      height: 40.0,
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0)),
            hintText: "Search",
            hintStyle:
                TextStyle(color: Colors.black, fontFamily: "Gilroy-Bold"),
            contentPadding: EdgeInsets.all(10.0),
            prefixIcon: Icon(
              FontAwesomeIcons.search,
              size: 18.0,
              color: Colors.black,
            )),
      ),
    );
  }
}
