import 'package:flutter/material.dart';

class CommanCompponentsScreen extends StatelessWidget {
  const CommanCompponentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}