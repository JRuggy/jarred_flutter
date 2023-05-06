// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, annotate_overrides, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_interpolation_to_compose_strings, unused_import
import 'package:flutter/material.dart';
import 'package:jarred/transaction.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App jarred',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shorts',
      amount: 70.11,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Jarred'),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.orange,
              child: Container(
                // color: Color.fromARGB(255, 248, 46, 164),

                // The double.infinity property means take as much width as you can on a certain device
                // width: double.infinity,
                // width: 100,
                child: Text('CHART'),
              ),
              elevation: 5,
            ),
          ),
          // Card(
          //   child: Container(
          //     // width: 90,
          //     width: double.infinity,
          //     color: Color.fromARGB(255, 43, 255, 0),
          //     child: Text('List Of Transactions'),
          //   ),
          // ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      // The margin: EdgeInsets.symmetric is used to give space with it's vertical and horizontal properties
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        // Border.all is for border  on both directions
                        border: Border.all(
                          color: Color.fromARGB(255, 255, 166, 0),
                          width: 2,
                        ),
                      ),
                      // Giving some space in the box
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Tshs.' + tx.amount.toString() + '/=',
                        // The line below is for styling the amount element text
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      // main axis is top to bottom and cross axis is left to right
                      // the crossaxisalignment.start aligns the texts to the left side
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          // tx.date.toString(),
                          // DateFormat('y-m-d h:m:sa').format(tx.date), //This is a printing pattern of the date as the way you want
                          // DateFormat.yMMMd().format(tx.date), // And this is still a pattern to come through it
                          DateFormat().format(tx.date),
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
