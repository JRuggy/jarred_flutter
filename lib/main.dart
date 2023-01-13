// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, annotate_overrides, sort_child_properties_last
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
            child: Text('CHART'),
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
