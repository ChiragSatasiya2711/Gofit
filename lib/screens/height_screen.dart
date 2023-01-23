import 'package:flutter/material.dart';
import 'package:gofit/screens/goal_screen.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({Key? key}) : super(key: key);

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
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
                "What is Your Height?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height / 30),
              ),
              SizedBox(
                height: height / 40,
              ),
              Text(
                "Height in cm.Don’t worry,you can always \nchange it later.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: height / 48, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: height / 1.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height / 20,
                    width: width / 2.3,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF0ECFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Back",
                          style: TextStyle(
                            color: Color(0xFF6842FF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height / 20,
                    width: width / 2.3,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6842FF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GoalScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Continue",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
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
