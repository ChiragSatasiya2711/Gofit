// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  Map data = {
    "data": [
      {"data1": "General Notification", "data2": false},
      {"data1": "Sound", "data2": false},
      {"data1": "Vibrate", "data2": false},
      {"data1": "App Updates", "data2": false},
      {"data1": "New Service Available", "data2": false},
      {"data1": "New tips available", "data2": false},
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  "Notification",
                  style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: data["data"].length,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data["data"][index]["data1"],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    FlutterSwitch(
                      value: data["data"][index]["data2"],
                      height: 25,
                      width: 50,
                      onToggle: (val) {
                        setState(() {
                          data["data"][index]["data2"] = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
