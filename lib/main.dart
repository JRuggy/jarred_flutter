// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, annotate_overrides, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Jarred',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Jarred'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Card(
            color: Colors.orange,
            child: Container(
              // color: Color.fromARGB(255, 248, 46, 164),

              // The double.infinity property means take as much width as you can on a certain device
              width: double.infinity,
              // width: 100,
              child: Text('CHART'),
            ),
            elevation: 5,
          ),
          Card(
            child: Text('List Of Transactions'),
          ),
        ],
      ),
    );
  }
}
