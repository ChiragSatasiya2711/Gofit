import 'package:flutter/material.dart';

class CommanCompponentsScreen extends StatelessWidget {
  final String? title;
  final double? width;

  const CommanCompponentsScreen({
    Key? key,
    this.title,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: width,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Center(
          child: Text(
        "$title",
        style: TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.w500, fontFamily: 'IntegralCF', letterSpacing: 1),
      )),
    );
  }
}
