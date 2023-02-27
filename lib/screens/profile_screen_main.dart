import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gofit/screens/insight_Screen.dart';
import 'package:gofit/screens/notification_screen.dart';
import 'package:gofit/screens/premium_screen.dart';
import 'package:gofit/screens/security_screen.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreenTwo extends StatefulWidget {
  const ProfileScreenTwo({Key? key}) : super(key: key);

  @override
  State<ProfileScreenTwo> createState() => _ProfileScreenTwoState();
}

class _ProfileScreenTwoState extends State<ProfileScreenTwo> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  bool data = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        leading: Image.asset(
          "assets/images/profile.png",
          color: Colors.black,
        ),
        actions: [
          Image.asset("assets/images/insight1.png"),
        ],
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.06),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: height * 0.13,
                    width: width * 0.3,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5F5F8),
                      shape: BoxShape.circle,
                    ),
                    child: image != null
                        ? Image.file(
                            File(image!.path),
                            fit: BoxFit.cover,
                          )
                        : const Icon(
                            Icons.person,
                            size: 90,
                            color: Color(0xFFE9E9F0),
                          ),
                  ),
                  GestureDetector(
                    onTap: () => pickImage(),
                    child: Image.asset("assets/images/profile_pen.png"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "Christina Ainsley",
                  style: TextStyle(fontSize: text * 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              Text(
                "christina_ainsley@yourdomain.com",
                style: TextStyle(fontSize: text * 12, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PremiumScreen(),
                      ));
                },
                child: Container(
                  height: height * 0.12,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/pro.png"),
                          Text(
                            "Upgrade to Premium",
                            style: TextStyle(fontSize: text * 15, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                          const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 14),
                      Text(
                        "Enjoy workout access without ads and restrictions",
                        style: TextStyle(fontSize: text * 10, fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Divider(thickness: 1, color: Colors.black, height: height * 0.06),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.grey, size: text * 25),
                  const SizedBox(width: 5),
                  Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black, fontSize: text * 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Row(
                  children: [
                    Icon(Icons.notifications, color: Colors.grey, size: text * 25),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationScreen(),
                            ));
                      },
                      child: Text(
                        "Notifications",
                        style: TextStyle(color: Colors.black, fontSize: text * 15, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecurityScreen(),
                      ));
                },
                child: Row(
                  children: [
                    Icon(Icons.security, color: Colors.grey, size: text * 25),
                    const SizedBox(width: 5),
                    Text(
                      "Security",
                      style: TextStyle(color: Colors.black, fontSize: text * 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Row(
                  children: [
                    Icon(Icons.help_outline, color: Colors.grey, size: text * 25),
                    const SizedBox(width: 5),
                    Text(
                      "Help",
                      style: TextStyle(color: Colors.black, fontSize: text * 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.remove_red_eye, color: Colors.grey, size: text * 25),
                  const SizedBox(width: 5),
                  Text(
                    "Dark Theme",
                    style: TextStyle(color: Colors.black, fontSize: text * 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: width * 0.36),
                  Switch(
                    value: data,
                    onChanged: (value) {
                      setState(() {
                        data = value;
                      });
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 17),
                child: Row(
                  children: [
                    Icon(Icons.login, color: Colors.red, size: text * 25),
                    const SizedBox(width: 5),
                    Text(
                      "Logout",
                      style: TextStyle(color: Colors.red, fontSize: text * 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          color: Colors.transparent,
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: height * 0.06,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.black38,
                    size: text * 22,
                  ),
                  const Text("Home")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Image.asset("assets/images/discover.png"), const Text("Discover")],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InsightScreen(),
                      ),
                      (route) => false);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/insight5.png"),
                    const Text(
                      "Insight",
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/profile.png",
                    color: const Color(0xFF6842FF),
                  ),
                  const Text(
                    "Profile",
                    style: TextStyle(color: Color(0xFF6842FF)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  pickImage() async {
    image = await picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }
}
