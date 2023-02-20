import 'package:flutter/material.dart';

class BackContinueComman extends StatelessWidget {
  final String? title;
  final String? data;
  final GestureTapCallback? onTap;

  const BackContinueComman({Key? key, this.title, this.data, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50,
          width: 150,
          decoration: const BoxDecoration(
            color: Color(0xFFF0ECFF),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          child: Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "$title",
                style: TextStyle(color: Color(0xFF6842FF), fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap ?? () {},
          child: Container(
            height: 50,
            width: 150,
            decoration: const BoxDecoration(
              color: Color(0xFF6842FF),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Center(
              child: Text(
                "$data",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
