import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(
  //     Duration(seconds: 5),
  //     () {
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => SliderScreen(),
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/new_image_2.png",
                  fit: BoxFit.cover,
                  height: 802,
                  width: 510,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width / 12,
                  top: height / 1.46,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height / 22),
                    ),
                    SizedBox(
                      height: height / 80,
                    ),
                    Text(
                      "Gofit",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height / 12),
                    ),
                    SizedBox(
                      height: height / 65,
                    ),
                    Text(
                      "The best fitness app in this century to",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height / 55),
                    ),
                    Text(
                      "accompany your sports.",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: height / 55),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
