import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';

class CongratulationScreen extends StatefulWidget {
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  State<CongratulationScreen> createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.08),
          child: Column(
            children: [
              SizedBox(height: height * 0.06),
              Image.asset("assets/images/congratulations.png"),
              Text(
                "Congratulations!",
                style: TextStyle(color: Color(0xFF6842FF), fontWeight: FontWeight.bold, fontSize: text * 25, height: 2),
              ),
              Text(
                "You have completed the workout!",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: text * 12, height: 2),
              ),
              Divider(color: Color(0xFF9E9E9E), thickness: 0.2, height: height * 0.06),
              Container(
                width: double.infinity,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "10",
                          style: TextStyle(fontSize: text * 30, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          "Workout",
                          style: TextStyle(fontSize: text * 14, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        Text(
                          "340",
                          style: TextStyle(fontSize: text * 30, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          "Cal",
                          style: TextStyle(fontSize: text * 14, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        Text(
                          "10:00",
                          style: TextStyle(fontSize: text * 30, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Text(
                          "Minutes",
                          style: TextStyle(fontSize: text * 14, fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.08),
              CommanContainer(title: "Next to Another Workout"),
              Container(
                height: 55,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Color(0xFFF0ECFF)),
                child: Center(
                  child: Text(
                    "Home",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IntegralCF',
                      color: Color(0xFF6842FF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
