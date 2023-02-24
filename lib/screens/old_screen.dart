import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/back_continue_comman.dart';

class OldScreen extends StatefulWidget {
  const OldScreen({Key? key}) : super(key: key);

  @override
  State<OldScreen> createState() => _OldScreenState();
}

class _OldScreenState extends State<OldScreen> {
  final FixedExtentScrollController _controller = FixedExtentScrollController(initialItem: 15);

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
                "How Old Are You?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height / 30),
              ),
              SizedBox(
                height: height / 40,
              ),
              Text(
                "Age in years.This will help us to personalize \nan exercise program plan that suits you.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: height / 50, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: height / 30),
              Stack(
                children: [
                  Container(
                    height: height / 2,
                    child: ListWheelScrollView.useDelegate(
                      physics: const BouncingScrollPhysics(),
                      itemExtent: 80,
                      controller: _controller,
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: 50,
                        builder: (context, index) {
                          return Text(
                            index.toString(),
                            style: TextStyle(fontSize: text * 40),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 150, left: width / 2.5),
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Color(0x6842FFFF),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Container(
                          height: 5,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Color(0x6842FFFF),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              const BackContinueComman(
                title: "Back",
                data: "Continue",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
