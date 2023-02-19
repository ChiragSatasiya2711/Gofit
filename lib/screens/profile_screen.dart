import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ImagePicker picker = ImagePicker();
  XFile? image;
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
              Container(
                alignment: Alignment.center,
                height: 500,
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    image != null
                        ? Image.file(
                            File(image!.path),
                          )
                        : const SizedBox(),
                    ElevatedButton(
                      onPressed: () async {
                        image = await picker.pickImage(source: ImageSource.gallery);

                        if (image != null) {
                          debugPrint("image ----------------->>> ${image!.path}");
                          setState(() {});
                        }
                      },
                      child: const Text("Pick Image"),
                    ),
                    image != null
                        ? Image.file(
                            File(image!.path),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
              TextField(
                minLines: 4,
                maxLines: 7,
                decoration: InputDecoration(
                  hintText: "Enter Description",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ],
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
    );
  }
}
