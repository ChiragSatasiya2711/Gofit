import 'dart:ui';
';
import 'package:flutter/material.dart';

class CommanCompponentsScreen extends StatelessWidget {
  final String? title;
  final double? width;
  final bool? Color;

  const CommanCompponentsScreen.CommanContainer({
    Key? key,
    this.title,
    this.width, this.Color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
          child: Text(
        "$title",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500, fontFamily: 'IntegralCF', letterSpacing: 1),
      )),
    );
  }
}
