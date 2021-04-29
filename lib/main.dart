import 'package:collections/pages/discover.dart';
import 'package:collections/pages/home.dart';
import 'package:collections/pages/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home': (BuildContext ctx) => HomePage(),
        'discover': (BuildContext ctx) => DiscoverPage(),
        'profile': (BuildContext ctx) => ProfilePage(),
      },
      theme: ThemeData(
        accentColor: Colors.grey[100],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
    );
  }
}
