import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/new_image_2.png", fit: BoxFit.cover),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.08, top: height / 1.4),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height / 15),
                        ),
                        SizedBox(
                          height: height / 200,
                        ),
                        Text(
                          "Gofit",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height / 8.9),
                        ),
                        SizedBox(
                          height: height / 30,
                        ),
                        Text(
                          "The best fitness app in this century to \naccompany your sports.",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height / 42),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
