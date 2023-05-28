// ignore: unused_import
import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';
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
  var pertanyaan = [
    {
      'pertanyaan': "Tempat apa yang anda akan kunjungi?",
      'jawaban': ['Pengunungan', 'Pantai', 'Mall', 'Hutan'],
    },
    {
      'pertanyaan': "Warna apa yang anda sukai?",
      'jawaban': ['Merahn', 'Hijau', 'Putih', 'Hijau'],
    },
    {
      'pertanyaan': "Hobby?",
      'jawaban': ['Renang', 'vasket', 'voli', 'chess'],
    },
  ];

  void _jawaban() {
    setState(() {
      _soalindex += 1;
    });
    print(_soalindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Kuis"),
        ),
        body: Column(
          children: [
            Pertanyaan(pertanyaan[_soalindex]['pertanyaan']),
            ...(pertanyaan[_soalindex]['jawaban'] as List<String>)
                .map((jawabanText) {
              return Jawaban(_jawaban, jawabanText);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
