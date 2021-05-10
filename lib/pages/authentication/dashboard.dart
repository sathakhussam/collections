import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/svg/dashboard.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
      semanticsLabel: 'Acme Logo',
      height: 250.0,
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              child: svg,
              margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0)),
          SizedBox(height: 10.0),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'signup');
            },
            child: Container(
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Gilroy-bold",
                    fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
              decoration: BoxDecoration(
                  color: Color(0xffF4ACB7),
                  borderRadius: BorderRadius.circular(10.0)),
              margin: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              padding: EdgeInsets.all(15.0),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "login");
            },
            child: Container(
              child: Text(
                "Login",
                style: TextStyle(
                    color: Color(0xffF4ACB7),
                    fontFamily: "Gilroy-bold",
                    fontSize: 18.0),
                textAlign: TextAlign.center,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              padding: EdgeInsets.all(15.0),
            ),
          ),
        ],
      ),
    );
  }
}
