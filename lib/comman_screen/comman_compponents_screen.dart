import 'dart:ui';

import 'package:flutter/material.dart';

class CommanContainer extends StatelessWidget {
  final String? title;
  final GestureTapCallback? onTap;
  const CommanContainer({
    Key? key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
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
      ),
    );
  }
}
