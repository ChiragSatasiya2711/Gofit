import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  Map data = {
    "data": [
      {"data1": "Face ID", "data2": false},
      {"data1": "Remember me", "data2": false},
      {"data1": "Touch ID", "data2": false},
      {"data1": "Google Authenticator", "data2": false},
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
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                children: [
                  BackButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Text(
                    "Security",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: data["data"].length,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data["data"][index]["data1"],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    FlutterSwitch(
                      value: data["data"][index]["data2"],
                      height: 25,
                      width: 50,
                      onToggle: (val) {
                        setState(
                          () {
                            data["data"][index]["data2"] = val;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: height / 17,
              width: width / 1.2,
              decoration: const BoxDecoration(
                color: Color(0xFFF0ECFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: const Center(
                child: Text(
                  "Change Password",
                  style: TextStyle(
                    color: Color(0xFF6842FF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
