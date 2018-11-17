import 'package:bridezilla/InformationScreen.dart';
import 'package:bridezilla/Screen2.dart';
import 'package:bridezilla/SettingsScreen.dart';
import 'package:bridezilla/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/button-page-bg.jpg",
            fit: BoxFit.cover,
          ),
          Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              // Column is also layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug painting" (press "p" in the console, choose the
              // "Toggle Debug Paint" action from the Flutter Inspector in Android
              // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
              // to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Start your wedding journey",
                  style: Theme.of(context).textTheme.headline.copyWith(
                        color: Colors.black,
                      ),
                ),
                SizedBox(height: 32.0),
                FlatButton(
                  color: peach,
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen2())),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'EXPLORE IDEAS',
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Find inspiration and new ideas',
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .copyWith(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 32.0),
                FlatButton(
                  color: peach,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InformationScreen())),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'PLAN YOUR WEDDING',
                      style: Theme.of(context).textTheme.title,

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Already know your style and budget?',
                    style: Theme.of(context)
                        .textTheme
                        .body1
                        .copyWith(color: Colors.grey),
                  ),
                ),
                SizedBox(height: 16.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
