// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, annotate_overrides
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
      body: Center(
        child: Text('Put Something Here'),
      ),
    );
  }
}
