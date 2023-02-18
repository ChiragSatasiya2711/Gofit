import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class SidePlank extends StatefulWidget {
  const SidePlank({Key? key}) : super(key: key);

  @override
  State<SidePlank> createState() => _SidePlankState();
}

class _SidePlankState extends State<SidePlank> {
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
                "Side Plank",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: text * 30),
              ),
            ),
            CircularCountDownTimer(
              width: 100,
              height: 100,
              duration: 30,
              fillColor: Colors.amber,
              color: Colors.grey,
              controller: _controller,
              backgroundColor: Colors.white54,
              strokeWidth: 10.0,
              strokeCap: StrokeCap.round,
              isTimerTextShown: true,
              isReverse: false,
              autoStart: false,
              onComplete: () {},
              textStyle: TextStyle(fontSize: 50.0, color: Colors.black),
            ),
            ElevatedButton(
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
          ],
        ),
      ),
    );
  }
}
