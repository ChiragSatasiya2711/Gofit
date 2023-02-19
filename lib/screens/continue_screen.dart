import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';
import 'package:gofit/screens/old_screen.dart';

class ContinueScreen extends StatefulWidget {
  const ContinueScreen({Key? key}) : super(key: key);

  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: height / 30),
          child: ListView(
            children: [
              Column(
                children: [
                  Text(
                    "Tell Us About Yourself",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height / 30),
                  ),
                  SizedBox(
                    height: height / 40,
                  ),
                  Text(
                    "To give you a better experience and results \nwe need to know your gender.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: height / 50, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _value = 0),
                    child: Container(
                      margin: EdgeInsets.only(top: height * 0.12, bottom: height * 0.02),
                      height: height * 0.19,
                      width: width * 0.42,
                      decoration: BoxDecoration(
                        color: _value == 0 ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(width),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/new_image_6.png"),
                          SizedBox(height: height * 0.01),
                          Text(
                            "Male",
                            style: TextStyle(color: Colors.white, fontSize: text * 18, height: 2, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _value = 1),
                    child: Container(
                      height: height * 0.19,
                      width: width * 0.42,
                      decoration: BoxDecoration(
                        color: _value == 1 ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(width),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/new_image_7.png"),
                          SizedBox(height: height * 0.01),
                          Text("Female", style: TextStyle(height: 1, fontSize: text * 18, color: Colors.white, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height / 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OldScreen(),
                        ),
                      );
                    },
                    child: CommanContainer(
                      title: "Continue",
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
