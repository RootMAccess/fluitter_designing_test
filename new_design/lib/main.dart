import 'package:flutter/material.dart';
import 'package:new_design/screen/home_screen.dart';

void main() => runApp(NewDesign());

class NewDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New Design",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.white,
        cardColor: Colors.black,
        scaffoldBackgroundColor: Colors.white54,
      ),
      home: HomeScreen(),
    );
  }
}
