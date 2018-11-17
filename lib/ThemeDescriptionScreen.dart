import 'package:bridezilla/colors.dart';
import 'package:flutter/material.dart';

class ThemeDescriptionScreen extends StatefulWidget {
  final int index;
  final String title;

  ThemeDescriptionScreen(this.index, this.title)

  @override
  ThemeDescriptionScreenState createState() {
    return new ThemeDescriptionScreenState();
  }
}

class ThemeDescriptionScreenState extends State<ThemeDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: [
              Image.asset(
                  "assets/image${widget.index}.jpg", fit: BoxFit.fitWidth),
              Text(
                widget.title,
                style: Theme
                    .of(context)
                    .textTheme
                    .display2
                    .copyWith(
                  color: Colors.black,
                ),

              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: Theme
                    .of(context)
                    .textTheme
                    .body2
                    .copyWith(
                  color: Colors.black,
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' ',
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.grey),
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: Theme
                    .of(context)
                    .textTheme
                    .body2
                    .copyWith(
                  color: Colors.black,
                ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ' ',
                  style: Theme.of(context)
                      .textTheme
                      .body1
                      .copyWith(color: Colors.grey),
                ),
              ),

              FlatButton(
                color: peach,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen())),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'SELECT',
                    style: Theme.of(context).textTheme.title,

                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}


