// ignore_for_file: implementation_imports, unused_import, avoid_print, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({super.key});

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      // the elevation property is for making the card being seen clearly (like shadow)
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(25), // this is like a div container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val) {
              //   titleInput = val;
              // },
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val) => amountInput = val,
              controller: amountController,
            ),
            // FloatingActionButton(
            //   child: Text('Add Transaction'),
            //   onPressed: () {},
            //   // hoverColor: Colors.amber,
            //   splashColor: Colors.black,
            //   // focusColor: Colors.black,
            //   // backgroundColor: Colors.blueGrey,
            //   // foregroundColor: Colors.blueAccent,
            //   // textColor: Colors.purple,
            // ),
            TextButton(
                onPressed: () {
                  // print(titleInput);
                  // print(amountInput);
                  print(titleController);
                  print(amountController);
                },
                child: Text('Add Transcation'))
          ],
        ),
      ),
    );
  }
}