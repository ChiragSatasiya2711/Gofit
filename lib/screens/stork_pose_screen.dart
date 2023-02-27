import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:gofit/screens/congratulations_screen.dart';

class StorkPoseScreen extends StatefulWidget {
  const StorkPoseScreen({Key? key}) : super(key: key);

  @override
  State<StorkPoseScreen> createState() => _StorkPoseScreenState();
}

class _StorkPoseScreenState extends State<StorkPoseScreen> {
  CountDownController _controller = CountDownController();
  bool _ispushed = false;

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
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/side_prank.png"),
                Padding(
                  padding: EdgeInsets.only(left: width * 0.03, top: height * 0.04),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: text * 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height * 0.02),
              child: Text(
                "Stork Pose",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 30),
              ),
            ),
            CircularCountDownTimer(
              width: 100,
              height: 100,
              duration: 30,
              fillColor: Colors.blue,
              controller: _controller,
              backgroundColor: Colors.white54,
              strokeWidth: 10.0,
              strokeCap: StrokeCap.round,
              isTimerTextShown: true,
              isReverse: false,
              autoStart: false,
              onComplete: () {},
              textStyle: const TextStyle(fontSize: 50.0, color: Colors.black),
              ringColor: const Color(0xFF9E9E9E),
            ),
            SizedBox(height: height * 0.03),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  if (_ispushed) {
                    _ispushed = false;
                    _controller.resume();
                  } else {
                    _ispushed = true;
                    _controller.pause();
                  }
                });
              },
              child: Text(_ispushed ? 'Resume' : 'Pause'),
            ),
            SizedBox(height: height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF0ECFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.arrow_back_rounded),
                        SizedBox(width: width * 0.02),
                        const Text(
                          "Previous",
                          style: TextStyle(color: Color(0xFF6842FF), fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF0ECFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CongratulationScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(color: Color(0xFF6842FF), fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
