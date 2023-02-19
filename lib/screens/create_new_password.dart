import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
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
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  const BackButton(),
                  const Text(
                    "Create New Password",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/human_one.png",
              scale: 1.2,
            ),
            SizedBox(
              height: height / 15,
            ),
            Padding(
              padding: EdgeInsets.only(right: width / 2.2),
              child: const Text("Create Your New Password"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: height / 15,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset("assets/images/lock.png"),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset("assets/images/dot.png"),
                  SizedBox(
                    width: width / 2,
                  ),
                  Image.asset("assets/images/eye.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: height / 15,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset("assets/images/lock.png"),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Image.asset("assets/images/dot.png"),
                  SizedBox(
                    width: width / 2,
                  ),
                  Image.asset("assets/images/eye.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/select.png"),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  "Remember me",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            CommanContainer(
              title: "Continue",
            ),
          ],
        ),
      ),
    );
  }
}
