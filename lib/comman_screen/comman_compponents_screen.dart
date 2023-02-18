import 'dart:ui';

import 'package:flutter/material.dart';

class CommanCantainer extends StatelessWidget {
  final String? title;
  CommanCantainer({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          color: Color(0xFF6842FF)),
      child: Center(
          child: Text(
        "$title",
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, fontFamily: 'IntegralCF', letterSpacing: 1, color: Colors.white),
      )),
    );
  }
}
