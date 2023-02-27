import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/back_continue_comman.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({Key? key}) : super(key: key);

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  final FixedExtentScrollController _controller = FixedExtentScrollController(initialItem: 15);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: height / 20),
          child: Column(
            children: [
              Text(
                "What is Your Weight?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height / 30),
              ),
              SizedBox(
                height: height / 40,
              ),
              Text(
                "Weight in kg.Don’t worry,you can always \nchange it later.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: height / 48, fontWeight: FontWeight.w400),
              ),
              const BackContinueComman(
                title: "Back",
                data: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
