import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';
import 'package:gofit/screens/get_ready_screen.dart';

class WorkoutActivity extends StatefulWidget {
  const WorkoutActivity({Key? key}) : super(key: key);

  @override
  State<WorkoutActivity> createState() => _WorkoutActivityState();
}

class _WorkoutActivityState extends State<WorkoutActivity> {
  Map userData = {
    "userData": [
      {"image": "assets/images/warrior_one.png", "data": "Warrior 1", "data2": "30 secods"},
      {"image": "assets/images/warrior_two.png", "data": "Side Plank", "data2": "20 secods"},
      {"image": "assets/images/warrior_three.png", "data": "One Leg Downw...", "data2": "20 secods"},
      {"image": "assets/images/warrior_four.png", "data": "Triangle Pose", "data2": "40 seconds"},
      {"image": "assets/images/warrior_five.png", "data": "Stork Pose", "data2": "20 seconds"},
    ],
  };

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
          padding: EdgeInsets.symmetric(vertical: height * 0.01, horizontal: width * 0.02),
          child: Column(
            children: [
              SizedBox(height: height * 0.04),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.02, right: width * 0.04),
                    child: Icon(Icons.arrow_back, size: 25),
                  ),
                  Text("Workout Activity", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ],
              ),
              SizedBox(height: height * 0.02),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Container(
                    height: height * 0.12,
                    margin: EdgeInsets.all(16),
                    width: double.infinity,
                    color: Color(0xFFF8F5F5),
                    child: Row(
                      children: [
                        Image.asset(
                          userData["userData"][index]["image"],
                        ),
                        SizedBox(width: width * 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${userData["userData"][index]["data"]}",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: text * 18),
                            ),
                            SizedBox(height: height * 0.02),
                            Text(
                              "${userData["userData"][index]["data2"]}",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  itemCount: userData["userData"].length,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GetReadyScreen(),
                ));
          },
          child: CommanContainer(
            title: "Start",
          ),
        ),
      ),
    );
  }
}
