import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Jawaban extends StatelessWidget {
  void Function()? handlePilih;

  String jawabanText;

  Jawaban(this.handlePilih, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
          onPressed: handlePilih,
          child: Text(
            jawabanText,
          )),
    );
  }
}
