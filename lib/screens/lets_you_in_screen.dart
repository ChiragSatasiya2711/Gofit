import 'package:flutter/material.dart';

class LetsYouInScreen extends StatefulWidget {
  const LetsYouInScreen({Key? key}) : super(key: key);

  @override
  State<LetsYouInScreen> createState() => _LetsYouInScreenState();
}

class _LetsYouInScreenState extends State<LetsYouInScreen> {
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
            const Padding(
              padding: EdgeInsets.only(top: 20, right: 340),
              child: BackButton(),
            ),
            const SizedBox(
              height: 70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Let’s you in",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 58,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/facebook.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Continue with Facebook",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 58,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Continue with Google",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 58,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/apple.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Continue with Apple",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: const Color(0xFF9E9E9E),
                  endIndent: width / width,
                  thickness: 0.2,
                  height: height * 0.07,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 58,
                  width: 350,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      color: Color(0xFF6842FF)),
                  child: const Center(
                    child: Text(
                      "Sign in with password",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(color: Color(0xFF6842FF), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
