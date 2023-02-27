import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gofit/comman_screen/back_continue_comman.dart';
import 'package:gofit/screens/lets_you_in_screen.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ImagePicker picker = ImagePicker();
  XFile? image;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    double text = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: height / 20, left: width * 0.02, right: width * 0.02),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Fill Your Profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: height / 30),
                ),
                SizedBox(
                  height: height / 40,
                ),
                Text(
                  "Don’t worry.you can always change it later.or you can skip it skip for now.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: height / 55, fontWeight: FontWeight.w400),
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: height * 0.16,
                      width: width * 0.32,
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
                SizedBox(height: height * 0.05),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    labelText: "Full Name",
                    fillColor: Color(0xFFF2F2F2),
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: nickNameController,
                  decoration: InputDecoration(
                    hintText: "Nickname",
                    labelText: "Nickname",
                    fillColor: Color(0xFFF2F2F2),
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelText: "Email",
                    suffixIcon: Icon(Icons.email),
                    fillColor: Color(0xFFF2F2F2),
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: mobilenumber,
                  decoration: InputDecoration(
                    hintText: "Phonenumber",
                    labelText: "phonenumber",
                    fillColor: Color(0xFFF2F2F2),
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    prefixIcon: Icon(Icons.content_paste_search),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: height / 1.5,
          // ),
          // const BackContinueComman(
          //   title: "Skip",
          //   data: "Start",
          // ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: BackContinueComman(
            title: "Skip",
            data: "Start",
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LetsYouInScreen(),
                  ),
                  (route) => false);
            },
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
