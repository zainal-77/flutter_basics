// ignore: unused_import
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TOPIK"),
        ),
        body: Column(
          children: [
            Text('Pertanyaan'),
            ElevatedButton(onPressed: null, child: Text('Jawaban1')),
          ],
        ),
      ),
    );
  }
}
