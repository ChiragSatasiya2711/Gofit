import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';
import 'package:gofit/screens/side_plank.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GetReadyScreen extends StatefulWidget {
  const GetReadyScreen({Key? key}) : super(key: key);

  @override
  State<GetReadyScreen> createState() => _GetReadyScreenState();
}

class _GetReadyScreenState extends State<GetReadyScreen> {
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
          padding: EdgeInsets.symmetric(vertical: height * 0.04, horizontal: width * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: text * 26,
                ),
              ),
              SizedBox(height: height / 3.6),
              Center(
                child: Text(
                  "Get Ready!",
                  style: TextStyle(color: Color(0xFF6842FF), fontWeight: FontWeight.bold, fontSize: text * 28),
                ),
              ),
              SizedBox(height: height * 0.07),
              Center(
                child: CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 15.0,
                  percent: 0.65,
                  progressColor: Color(0xFF6842FF),
                  center: Text(
                    "9",
                    style: TextStyle(fontSize: text * 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
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
                  builder: (context) => SidePlank(),
                ));
          },
          child: CommanCantainer(
            title: "Start",
          ),
        ),
      ),
    );
  }
}
