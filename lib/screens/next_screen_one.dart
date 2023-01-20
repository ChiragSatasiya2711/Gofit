import 'package:flutter/material.dart';

class NextScreenOne extends StatefulWidget {
  const NextScreenOne({Key? key}) : super(key: key);

  @override
  State<NextScreenOne> createState() => _NextScreenOneState();
}

class _NextScreenOneState extends State<NextScreenOne> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("assets/images/new_image_3.png"),
            Text(
              "Find the right \nWorkout for what \nyou need",
              style: TextStyle(color: Colors.black, fontSize: height / 25, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
