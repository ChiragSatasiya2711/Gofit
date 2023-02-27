import 'package:flutter/material.dart';
import 'package:gofit/screens/profile_screen_main.dart';
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_circle_left_outlined, size: text * 22),
                    Text(
                      "December 2022",
                      style: TextStyle(fontSize: text * 16, fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                    Icon(Icons.arrow_circle_right_outlined, size: text * 22),
                  ],
                ),
                SizedBox(height: height * 0.03),
                Container(
                  height: height * 0.08,
                  child: ListView.builder(
                    itemCount: data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.grey.shade300,
                      ),
                      margin: EdgeInsets.only(right: 15),
                      width: width * 0.1,
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
                  radius: width * 0.18,
                  lineWidth: 12,
                  percent: 0.75,
                  progressColor: Color(0xFF6842FF),
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "950",
                        style: TextStyle(fontSize: text * 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Cal",
                        style: TextStyle(fontSize: text * 20, fontWeight: FontWeight.bold),
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
                      progressColor: Color(0xFFFBD129),
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "64",
                            style: TextStyle(fontSize: text * 23, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "workout",
                            style: TextStyle(fontSize: text * 13, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    CircularPercentIndicator(
                      radius: width * 0.14,
                      lineWidth: 12,
                      percent: 0.5,
                      progressColor: Color(0xFFFF6267),
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50",
                            style: TextStyle(fontSize: text * 23, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Minutes",
                            style: TextStyle(fontSize: text * 13, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    CircularPercentIndicator(
                      radius: width * 0.14,
                      lineWidth: 12,
                      percent: 0.7,
                      progressColor: Color(0xFF4883FE),
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "72",
                            style: TextStyle(fontSize: text * 23, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "bpm",
                            style: TextStyle(fontSize: text * 13, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height * 0.08),
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Image.asset("assets/images/insight3.png"),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Icon(Icons.bookmark_border, color: Colors.white, size: text * 25),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.04),
                Container(
                  height: height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.home_outlined,
                            color: Colors.black38,
                            size: text * 22,
                          ),
                          Text("Home")
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Image.asset("assets/images/discover.png"), Text("Discover")],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/insight4.png"),
                          Text(
                            "Insight",
                            style: TextStyle(color: Color(0xFF6842FF)),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreenTwo(),
                              ));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Image.asset("assets/images/profile.png"), Text("Profile")],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
