import 'package:bridezilla/HomeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() {
    return new SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  Future goToNextPageAfterDelay() async {
    await new Future.delayed(const Duration(seconds: 3));
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  void initState() {
    goToNextPageAfterDelay();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/splashScreen.jpg',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Bridezilla",
                    style: Theme
                        .of(context)
                        .textTheme
                        .display2
                        .copyWith(
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text("Your dream wedding in a click",
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline
                        .copyWith(
                        color: Colors.white
                    ),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
