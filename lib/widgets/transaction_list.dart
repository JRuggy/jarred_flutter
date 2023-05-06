// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, unused_field, prefer_const_constructors, prefer_interpolation_to_compose_strings, unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                // mainAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: CrossAxisAlignment.stretch,
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
    );
  }
}
