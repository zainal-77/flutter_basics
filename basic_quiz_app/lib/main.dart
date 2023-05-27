// ignore: unused_import
import 'package:flutter/material.dart';
import './pertanyaan.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _soalindex = 0;

  @override
  Widget build(BuildContext context) {
    var pertanyaan = [
      'Apa?',
      'bgmn?',
    ];

    void _jawaban() {
      setState(() {
        _soalindex += 1;
      });
      print(_soalindex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Kuis"),
        ),
        body: Column(
          children: [
            Text(pertanyaan[_soalindex]),
            ElevatedButton(onPressed: _jawaban, child: Text('Jawaban1')),
            ElevatedButton(onPressed: _jawaban, child: Text('Jawaban2')),
            ElevatedButton(onPressed: _jawaban, child: Text('Jawaban3')),
          ],
        ),
      ),
    );
  }
}
