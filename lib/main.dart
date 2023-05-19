// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, annotate_overrides, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, duplicate_ignore, prefer_interpolation_to_compose_strings, unused_import, avoid_print, must_be_immutable, unused_element
import 'package:flutter/material.dart';
import 'package:jarred/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:jarred/widgets/new_transaction.dart';
import 'package:jarred/widgets/transaction_list.dart';
// import 'package:jarred/widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //This statement removes the debug banner
      title: 'App Jarred',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // late String titleInput;
  final List<Transaction> _userTransactions = [
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

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

// This is for popping up modals
  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Jarred'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.amber,
            ),
            // onPressed: () {}, // This does nothing by default
            onPressed: () => _startAddNewTransaction(context),
          ),
        ],
      ),
      // You can wrap the body column into singlechildscrollview in order to scroll items
      body: SingleChildScrollView(
        child: Column(
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
                elevation: 10,
              ),
            ),

            TransactionList(_userTransactions),
            // Card(
            //   child: Container(
            //     // width: 90,
            //     width: double.infinity,
            //     color: Color.fromARGB(255, 43, 255, 0),
            //     child: Text('List Of Transactions'),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _startAddNewTransaction(context),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
