import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './models/doc_expire.dart';
import './add_document.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<DocExpire> docList = [
    DocExpire(id: 1, title: "Test 1", daysCount: '30', date: DateTime.now()),
    DocExpire(id: 7, title: "Test 3", daysCount: '50', date: DateTime.now()),
    DocExpire(id: 6, title: "Test 4", daysCount: '10', date: DateTime.now()),
    DocExpire(id: 4, title: "Test 7", daysCount: '100', date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Scaffold(
              appBar: AppBar(
                title: const Text("DocExpre"),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ...docList.map((doc) {
                    return Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.only(
                              left: 5, right: 10, top: 5, bottom: 5),
                          color: Colors.indigo,
                          child: Center(
                            child: Card(
                              color: Colors.indigo,
                              child: Text(
                                doc.id.toString(),
                                style: const TextStyle(
                                    backgroundColor: Colors.indigo,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doc.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              "${doc.daysCount} days left",
                              style: const TextStyle(color: Colors.grey),
                            ),
                            Text("Exp: ${DateFormat.yMMMd().format(doc.date)}"),
                          ],
                        ),
                      ],
                    );
                  }).toList(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/addDocument');
                    },
                    child: const Text("Add Document"),
                  )
                ],
              ),
            ),
        '/addDocument': (context) => const AddDocuments(),
      },
    );
  }
}
