import 'package:flutter/material.dart';
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
          padding: EdgeInsets.only(top: height / 30, left: width / 10),
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
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => setState(() => _value = 0),
                        child: Container(
                          margin: EdgeInsets.only(top: height * 0.12, bottom: height * 0.02),
                          height: height * 0.15,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            color: _value == 0 ? Colors.blue : Colors.grey,
                            borderRadius: BorderRadius.circular(width),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/new_image_6.png"),
                              Text("Male"),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => setState(() => _value = 1),
                        child: Container(
                          height: height * 0.15,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            color: _value == 1 ? Colors.blue : Colors.grey,
                            borderRadius: BorderRadius.circular(width),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/new_image_7.png"),
                              Text("FeMale"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height / 4.5),
                  Container(
                    height: height / 20,
                    width: width / 1.3,
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
                              builder: (context) => const OldScreen(),
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
            ],
          ),
        ),
      ),
    );
  }
}
