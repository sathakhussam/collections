import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(
                              FontAwesomeIcons.arrowLeft,
                              size: 25.0,
                            ),
                            onPressed: () => Navigator.pop(context)),
                        SizedBox(width: 10.0),
                        Text(
                          "Posts",
                          style: TextStyle(
                              fontFamily: "Gilroy-Bold",
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w800,
                              fontSize: 28.0),
                        ),
                      ],
                    ),
                    IconButton(
                        padding: EdgeInsets.all(0),
                        icon: Icon(
                          FontAwesomeIcons.arrowRight,
                          size: 25,
                        ),
                        onPressed: () {})
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                height: MediaQuery.of(context).size.width - 50,
                width: MediaQuery.of(context).size.width - 50,
                decoration: BoxDecoration(
                    color: Color(0xffc4c4c4),
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              SizedBox(height: 10.0),
              Expanded(
                  child: SingleChildScrollView(child: buildPosts(context))),
            ],
          ),
        ),
      ),
    );
  }

  Container buildPosts(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.0),
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
    );
  }
}
