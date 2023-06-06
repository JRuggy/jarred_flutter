// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, unused_field, prefer_const_constructors, prefer_interpolation_to_compose_strings, unused_import, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
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
                        color: Theme.of(context).shadowColor,
                        width: 2,
                      ),
                    ),
                    // Giving some space in the box
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Tshs.' + tx.amount.toString() + '/=',

                      // This line below limits the number to two decimal points and rounds off if great than 5 (five)
                      // 'Tshs.' + tx.amount.toStringAsFixed(2) + '/=',

                      // The line below is for styling the amount element text
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  Column(
                    // main axis is top to bottom and cross axis is left to right
                    // the crossaxisalignment.start aligns the texts to the left side
                    // mainAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: CrossAxisAlignment.stretch,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tx.title,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        // tx.date.toString(),
                        // DateFormat('y-m-d h:m:sa').format(tx.date), //This is a printing pattern of the date as the way you want
                        // DateFormat.yMMMd().format(tx.date), // And this is still a pattern to come through it
                        DateFormat().format(tx.date),
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
