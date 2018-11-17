import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  @override
  InformationScreenState createState() {
    return new InformationScreenState();
  }
}

class InformationScreenState extends State<InformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/rose-bar.jpg',
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("Some important details",
                style: Theme.of(context).textTheme.title,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter text',
                        labelText: 'Budget: \$10,000'),
                    controller: new TextEditingController(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter text',
                        labelText: 'Number of guests'),
                    controller: new TextEditingController(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter text',
                        labelText: 'Location'),
                    controller: new TextEditingController(),
                  ),
                ),
                DropdownButton<String>(
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  hint: Text("Date"),
                  onChanged: (_) {},
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
