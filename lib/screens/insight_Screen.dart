import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InsightScreen extends StatefulWidget {
  const InsightScreen({Key? key}) : super(key: key);

  @override
  State<InsightScreen> createState() => _InsightScreenState();
}

class _InsightScreenState extends State<InsightScreen> {
  List data = ["M", "T", "W", "T", "F", "S", "S"];
  List data1 = ["10", "11", "12", "13", "14", "15", "16"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        title: Text(
          "Insight",
          style: TextStyle(color: Colors.black),
        ),
        leading: Image.asset("assets/images/insight.png"),
        actions: [
          Image.asset("assets/images/insight1.png"),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.02),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_circle_left_outlined),
                  Text(
                    "December 2024",
                    style: TextStyle(fontSize: text * 18, fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                  Icon(Icons.arrow_circle_right_outlined),
                ],
              ),
              SizedBox(height: height * 0.03),
              Container(
                height: height * 0.07,
                child: ListView.builder(
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade300,
                    ),
                    margin: EdgeInsets.only(right: 16),
                    width: 40,
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${data[index]}",
                          style: TextStyle(fontSize: text * 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${data1[index]}",
                          style: TextStyle(fontSize: text * 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              CircularPercentIndicator(
                radius: width*0.2,
                lineWidth: 12,
                percent: 0.75,
                progressColor: Color(0xFF6842FF),
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "950",
                      style: TextStyle(fontSize: text * 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Cal",
                      style: TextStyle(fontSize: text * 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularPercentIndicator(
                    radius: width * 0.14,
                    lineWidth: 12,
                    percent: 0.75,
                    progressColor: Colors.yellowAccent,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "64",
                          style: TextStyle(fontSize: text * 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "workout",
                          style: TextStyle(fontSize: text * 20, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: width * 0.14,
                    lineWidth: 12,
                    percent: 0.5,
                    progressColor: Colors.red,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "50",
                          style: TextStyle(fontSize: text * 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Minutes",
                          style: TextStyle(fontSize: text * 20, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  CircularPercentIndicator(
                    radius: width * 0.14,
                    lineWidth: 12,
                    percent: 0.7,
                    progressColor: Colors.blue,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "72",
                          style: TextStyle(fontSize: text * 35, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "bpm",
                          style: TextStyle(fontSize: text * 20, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset("assets/images/insight3.png"),
            ],
          ),
        ),
      ),
    );
  }
}
