import 'package:collections/pages/add_post.dart';
import 'package:collections/pages/authentication/dashboard.dart';
import 'package:collections/pages/authentication/login.dart';
import 'package:collections/pages/authentication/signup.dart';
import 'package:collections/pages/discover.dart';
import 'package:collections/pages/home.dart';
import 'package:collections/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var isAuthenticated = true;
  @override
  Widget build(BuildContext context) {
    isAuthenticated = true;
    return MaterialApp(
      routes: {
        'home': (BuildContext ctx) => HomePage(),
        'discover': (BuildContext ctx) => DiscoverPage(),
        'profile': (BuildContext ctx) => ProfilePage(),
        'add_post': (BuildContext ctx) => AddPostPage(),
        'login': (BuildContext ctx) => LoginPage(),
        'signup': (BuildContext ctx) => SignUpPage(),
        'dashboard': (BuildContext ctx) => DashBoardPage(),
      },
      theme: ThemeData(
        accentColor: Colors.grey[100],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: isAuthenticated ? 'home' : 'dashboard',
    );
  }
}
