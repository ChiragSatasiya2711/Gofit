import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/back_continue_comman.dart';

class HeightScreen extends StatefulWidget {
  const HeightScreen({Key? key}) : super(key: key);

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
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
                height: 50,
              ),
              Stack(
                children: [
                  Container(
                    height: height / 2,
                    child: ListWheelScrollView.useDelegate(
                      physics: const BouncingScrollPhysics(),
                      itemExtent: 80,
                      controller: _controller,
                      childDelegate: ListWheelChildBuilderDelegate(
                        childCount: 200,
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
                    padding: EdgeInsets.only(top: 150, left: width / 2.6),
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: 90,
                          decoration: const BoxDecoration(
                            color: Color(0x6842FFFF),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        Container(
                          height: 5,
                          width: 90,
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
              SizedBox(
                height: height / 10,
              ),
              BackContinueComman(
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
