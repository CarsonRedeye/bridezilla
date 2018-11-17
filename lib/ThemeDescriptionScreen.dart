import 'package:flutter/material.dart';

class ThemeDescriptionScreen extends StatefulWidget {
  @override
  ThemeDescriptionScreenState createState() {
    return new ThemeDescriptionScreenState();
  }
}

class ThemeDescriptionScreenState extends State<ThemeDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          Image.asset("assets/image1.jp", fit: BoxFit.fitHeight)
      ),
    );
  }
}


