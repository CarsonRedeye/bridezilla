import 'package:bridezilla/ThemeDescriptionScreen.dart';
import 'package:flutter/material.dart';

class ThemeListScreen extends StatefulWidget {
  @override
  ThemeListScreenState createState() {
    return new ThemeListScreenState();
  }
}

class ThemeListScreenState extends State<ThemeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new GridView.extent(
        maxCrossAxisExtent: 250.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(6, context), //Where is this function ?
      ),
    );
  }
}

List<Widget> _buildGridTiles(numberOfTiles, context) {
  final titles = [
    "",
    "Beach",
    "Hotel",
    "Backyard",
    "Church",
    "Park",
    "Castle"
  ];
  List<Container> containers =
      new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = 'assets/image${index + 1}.jpg';

    return new Container(
      child: SafeArea(
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => ThemeDescriptionScreen(index + 1, titles[index + 1]))),
          child: Stack(
//          onPressed: () => Navigator.push(
//              context, MaterialPageRoute(builder: (context) => ThemeDescriptionScreen(index + 1, titles[index + 1]))),
            fit: StackFit.expand,
            children: [
              Image.asset(imageName, fit: BoxFit.fitHeight),
              Center(
                child: Text(
                  titles[index + 1],
                  style: Theme.of(context).textTheme.display1.copyWith(
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 8.0,
                        color: Color.fromARGB(125, 0, 0, 255),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
  return containers;
}
