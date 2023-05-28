import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pertanyaan extends StatelessWidget {
  // const Pertanyaan({Key? key}) : super(key: key);

  var pertanyaan;
  Pertanyaan(this.pertanyaan);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        pertanyaan,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
