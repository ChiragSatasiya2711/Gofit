import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
              height: 20,
            ),
            Row(
              children: [
                BackButton(),
                Text(
                  "Forgot Password",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/human_photo.png"),
            SizedBox(
              height: 40,
            ),
            Text("Select which contact details should we use to reset\nyour password"),
            SizedBox(
              height: 40,
            ),
            Container(
              height: height / 8,
              width: width / 1.2,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF6842FF),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Image.asset(
                      "assets/images/sms_image.png",
                      scale: 1.2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 110),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "via SMS:",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "+1 111 ******99",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: height / 8,
              width: width / 1.2,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
