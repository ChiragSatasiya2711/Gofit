import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/comman_compponents_screen.dart';
import 'package:gofit/screens/workoutLevel_screen.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  BackButton(),
                  Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/human_photo.png"),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Select which contact details should we use to reset\nyour password",
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: height / 8,
                width: width / 1.1,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF6842FF),
                  ),
                  borderRadius: const BorderRadius.all(
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
                        children: const [
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
              const SizedBox(
                height: 20,
              ),
              Container(
                height: height / 8,
                width: width / 1.1,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: const BorderRadius.all(
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
                        "assets/images/email_images.png",
                        scale: 1.2,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "via SMS:",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "and***ey@yourdomain.com",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CommanContainer(
                title: "Continue",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WorkoutLevelScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
