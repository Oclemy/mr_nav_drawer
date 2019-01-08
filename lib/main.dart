import 'package:mr_nav_drawer/pages/Home.dart';
import 'package:flutter/material.dart';

//Lastly we come to our main app
class MyApp extends StatelessWidget {
  // This is the root of our application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Mr NavigationDrawer',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new HomePage(),
    );
  }
}

//Then we run our app
void main() => runApp(new MyApp());

