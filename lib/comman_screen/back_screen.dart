import 'package:flutter/material.dart';

class BackScreen extends StatelessWidget {
  final String? title;
  // final Color? color;
  const BackScreen({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Container(
      height: height / 20,
      width: width / 2.3,
      decoration: const BoxDecoration(
        color: Color(0xFFF0ECFF),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: const Center(
        child: Text(
          "Back",
          style: TextStyle(fontSize: 20, color: Color(0xFF6842FF), fontWeight: FontWeight.w500, fontFamily: 'IntegralCF', letterSpacing: 1),
        ),
      ),
    );
  }
}
