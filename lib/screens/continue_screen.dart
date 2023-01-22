import 'package:flutter/material.dart';
import 'package:gofit/screens/old_screen.dart';

class ContinueScreen extends StatefulWidget {
  const ContinueScreen({Key? key}) : super(key: key);

  @override
  State<ContinueScreen> createState() => _ContinueScreenState();
}

class _ContinueScreenState extends State<ContinueScreen> {
  Color color = Colors.grey;

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
          child: Column(
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
              SizedBox(
                height: height / 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    color = Color(0xFF6842FF);
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    color = Colors.grey;
                  });
                },
                child: Container(
                  height: height / 4.2,
                  width: width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(200),
                    ),
                    color: color,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/new_image_6.png",
                        color: Colors.white,
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Colors.white, fontSize: height / 25),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    color = Color(0xFF6842FF);
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    color = Colors.grey;
                  });
                },
                child: Container(
                  height: height / 4.2,
                  width: width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(200),
                    ),
                    color: color,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        "assets/images/new_image_7.png",
                        color: Colors.white,
                      ),
                      Text(
                        "Female",
                        style: TextStyle(color: Colors.white, fontSize: height / 25),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height / 9,
              ),
              Container(
                height: height / 20,
                width: width / 1.3,
                decoration: BoxDecoration(
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
                          builder: (context) => OldScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: height / 50),
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
