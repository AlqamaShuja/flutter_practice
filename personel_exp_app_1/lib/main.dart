import 'package:flutter/material.dart';
import './widgets/chart.dart';
import './widgets/new_transaction.dart';
import './models/Transaction.dart';
import './widgets/transaction_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: ThemeData(
        primarySwatch: MaterialColor(
          Colors.black.value,
          <int, Color>{
            50: Color(Colors.black.value + 0xFF0F0F0F),
            100: Color(Colors.black.value + 0xFF1E1E1E),
            200: Color(Colors.black.value + 0xFF2E2E2E),
            300: Color(Colors.black.value + 0xFF3D3D3D),
            400: Color(Colors.black.value + 0xFF4C4C4C),
            500: Color(Colors.black.value + 0xFF5C5C5C),
            600: Color(Colors.black.value + 0xFF6B6B6B),
            700: Color(Colors.black.value + 0xFF7A7A7A),
            800: Color(Colors.black.value + 0xFF8A8A8A),
            900: Color(Colors.black.value + 0xFF999999),
          },
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Colors.white),
            ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransacton = [
    Transaction(
      id: "1",
      title: "Buy Shoes",
      amount: 23.4,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Buy Glasses",
      amount: 78.34,
      date: DateTime.now(),
    ),
    Transaction(
      id: "3",
      title: "Buy Chaddi",
      amount: 35.82,
      date: DateTime.now(),
    ),
    Transaction(
      id: "4",
      title: "Buy Dahi",
      amount: 2.44,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, String amnt, DateTime date) {
    Transaction newTx = Transaction(
        id: _userTransacton.length.toString(),
        title: title,
        amount: double.parse(amnt),
        date: date);
    setState(() {
      _userTransacton.add(newTx);
    });
  }

  void _openNewTxSheet(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {},
            child: AddNewTransaction(_addNewTransaction),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  List<Transaction> get _recentTransaction {
    return _userTransacton.where((tx) {
      return tx.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
        actions: [
          IconButton(
            onPressed: () => _openNewTxSheet(context),
            icon: const Icon(Icons.add),
            color: Colors.white,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Chart(
              recentTx: _recentTransaction,
            ),
            TransactionList(_userTransacton),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openNewTxSheet(context),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
