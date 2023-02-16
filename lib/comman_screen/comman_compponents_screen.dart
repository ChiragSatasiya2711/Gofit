import 'dart:ui';

import 'package:flutter/material.dart';

class CommanCantainer extends StatelessWidget {
  final String? title;
  CommanCantainer.CommanContainer({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Color(0xFF6842FF)),
      child: Center(
          child: Text(
        "$title",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500, fontFamily: 'IntegralCF', letterSpacing: 1),
      )),
    );
  }
}
