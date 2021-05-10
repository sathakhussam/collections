import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var username;

  var password;

  var email;

  var progress = 0;

  @override
  Widget build(BuildContext context) {
    print(email);
    //

    //

    // Building Area

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Collections",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "Gilroy-Bold", fontSize: 36.0)),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: TextField(
                  decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff888888)),
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: "Choose Your Username",
                fillColor: Color(0xfff7f7f7),
                filled: true,
                hintStyle:
                    TextStyle(color: Color(0xff888888), fontFamily: "Gilroy"),
                contentPadding: EdgeInsets.all(10.0),
              )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: TextField(
                  decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff888888)),
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: "Enter Your Password",
                fillColor: Color(0xfff7f7f7),
                filled: true,
                hintStyle:
                    TextStyle(color: Color(0xff888888), fontFamily: "Gilroy"),
                contentPadding: EdgeInsets.all(10.0),
              )),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: TextField(
                  decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff888888)),
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: "Enter Your Email",
                fillColor: Color(0xfff7f7f7),
                filled: true,
                hintStyle:
                    TextStyle(color: Color(0xff888888), fontFamily: "Gilroy"),
                contentPadding: EdgeInsets.all(10.0),
              )),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Gilroy-bold",
                      fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF4ACB7),
                    borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                padding: EdgeInsets.all(15.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  var inputText;
  var onChanged;
  var controller;
  CustomInputField({this.inputText, this.onChanged, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff888888)),
              borderRadius: BorderRadius.circular(10.0)),
          hintText: inputText,
          fillColor: Color(0xfff7f7f7),
          filled: true,
          hintStyle: TextStyle(color: Color(0xff888888), fontFamily: "Gilroy"),
          contentPadding: EdgeInsets.all(10.0),
        ));
  }
}
