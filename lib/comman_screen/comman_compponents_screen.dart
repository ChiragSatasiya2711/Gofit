import 'package:flutter/material.dart';

class CommanCompponentsScreen extends StatelessWidget {
  final int index;
  CommanCompponentsScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff6842FF),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Center(
            child: Text(
          "Next",
          style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'IntegralCF',
              letterSpacing: 1),
        )),
      ),
    );
  }
}
